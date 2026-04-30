SET @PID = 2; -- Bananas

SELECT 
    Stock_ID, Quantity, Exp_Date
FROM
    Stock
WHERE
    Product_ID = @PID;