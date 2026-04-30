SELECT 
    Product.Name, Stock.Stock_ID
FROM
    Product,
    Stock
WHERE
    Product.Product_ID = Stock.Product_ID
        AND Stock.Exp_Date < CURRENT_DATE()
        AND Stock.Quantity > 0; 