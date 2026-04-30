SELECT COUNT(Product.Product_ID) FROM Product, Category WHERE Product.Category_ID = Category.Category_ID AND Category.Name = "Produce";
