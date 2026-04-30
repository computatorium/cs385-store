SET @PID = 4; -- Strawberries

SELECT 
    Stock_ID, Quantity, Exp_Date
FROM
    Stock
WHERE
    Product_ID = @PID;