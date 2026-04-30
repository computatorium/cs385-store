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
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)
);

-- Create Stock
CREATE TABLE Stock (
    Stock_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT NOT NULL,
    Quantity INT NOT NULL,
    Stock_Date DATE NOT NULL,
    Exp_Date DATE,
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
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
    PRIMARY KEY (Product_ID, Sale_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
    FOREIGN KEY (Sale_ID) REFERENCES Sale(Sale_ID)
);