-- Drop the DB to ensure we can create it. Then create and select it.
DROP DATABASE IF EXISTS Store;
CREATE DATABASE Store;
USE Store;

-- Create Category
CREATE TABLE Category (
    Category_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL
);

-- Create Product
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Category_ID INT NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Price DECIMAL(10 , 2 ) NOT NULL,
    FOREIGN KEY (Category_ID)
        REFERENCES Category (Category_ID)
);

-- Create Stock
CREATE TABLE Stock (
    Stock_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT NOT NULL,
    Quantity INT NOT NULL,
    Stock_Date DATE NOT NULL,
    Exp_Date DATE,
    FOREIGN KEY (Product_ID)
        REFERENCES Product (Product_ID)
);

-- Create Sale
CREATE TABLE Sale (
    Sale_ID INT PRIMARY KEY AUTO_INCREMENT,
    Sale_Date DATE NOT NULL
);

-- Create Product_Sold
CREATE TABLE Product_Sold (
    Product_ID INT NOT NULL,
    Sale_ID INT NOT NULL,
    Quantity INT NOT NULL,
    PRIMARY KEY (Product_ID , Sale_ID),
    FOREIGN KEY (Product_ID)
        REFERENCES Product (Product_ID),
    FOREIGN KEY (Sale_ID)
        REFERENCES Sale (Sale_ID)
);

-- Product_Sold triggers
DROP TRIGGER IF EXISTS before_product_sold_insert;
DELIMITER $$
CREATE TRIGGER before_product_sold_insert
BEFORE INSERT ON Product_Sold
FOR EACH ROW
BEGIN
	-- total available stock
    DECLARE available INT;

	-- get available unexpired stock
    SELECT COALESCE(SUM(Quantity), 0)
    INTO available
    FROM Stock
    WHERE Product_ID = NEW.Product_ID
      AND (Exp_Date IS NULL OR Exp_Date >= CURDATE());

	-- if we don't have enough stock error (https://dev.mysql.com/doc/refman/8.4/en/signal.html)
    IF available < NEW.Quantity THEN
		-- CONCAT not available within SIGNAL statement
        SET @msg = CONCAT('Insufficient stock: requested ', NEW.Quantity, ', available ', available);
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = @msg;
    END IF;
END$$

DELIMITER ;

DROP TRIGGER IF EXISTS after_product_sold_insert;
DELIMITER $$
CREATE TRIGGER after_product_sold_insert
AFTER INSERT ON Product_Sold
FOR EACH ROW
BEGIN
    DECLARE remaining INT;
    DECLARE stock_to_reduce INT;
    DECLARE target_stock_id INT;
    DECLARE target_qty INT;
    
    SET remaining = NEW.Quantity;
    
    batch_loop: LOOP
		-- if we have no stock left to remove, exit
        IF remaining <= 0 THEN
            LEAVE batch_loop;
        END IF;
        
		-- get the oldest batch with stock remaining
        SELECT Stock_ID, Quantity
        INTO target_stock_id, target_qty
        FROM Stock
        WHERE Product_ID = NEW.Product_ID
          AND (Exp_Date IS NULL OR Exp_Date >= CURDATE())
          AND Quantity > 0
        ORDER BY Stock_Date ASC
        LIMIT 1;
        
		-- if there's no batch, exit 
        -- (this invariant should be ensured by the before-INSERT trigger)
        IF target_stock_id IS NULL THEN
            LEAVE batch_loop;
        END IF;
        
		-- empty the batch or take what we need
        SET stock_to_reduce = LEAST(remaining, target_qty);
        
		-- update the Stock instance
        UPDATE Stock
        SET Quantity = Quantity - stock_to_reduce
        WHERE Stock_ID = target_stock_id;
        
		-- reduce remaining by how much we took
        SET remaining = remaining - stock_to_reduce;
        
		-- prepare for next iteration
        SET target_stock_id = NULL;
        SET target_qty = NULL;
    END LOOP;
END$$

DELIMITER ;