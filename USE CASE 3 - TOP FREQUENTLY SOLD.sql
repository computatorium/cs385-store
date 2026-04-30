SELECT 
    Product.Name, SUM(Product_Sold.Quantity)
FROM
    Product,
    Product_Sold
WHERE
    Product.Product_ID = Product_Sold.Product_ID
GROUP BY Product.Name
ORDER BY SUM(Product_Sold.Quantity) DESC;