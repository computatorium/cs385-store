SELECT 
    Product.Name, SUM(Stock.Quantity)
FROM
    Product,
    Stock
WHERE
    Product.Product_ID = Stock.Product_ID
GROUP BY Product.Name
HAVING SUM(Stock.Quantity) < 10;