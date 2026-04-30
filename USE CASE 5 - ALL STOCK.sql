SET @PID = 4; -- Strawberries

SELECT Stock_ID, Quantity, Exp_Date FROM Stock Where Product_ID = @PID;