
-- Small Retail Business

CREATE DATABASE Retail_Business;

USE Retail_Business;
Go

-- 1. DDL (Data Definition Language)
-- Create a table named Sales with the following columns:
CREATE TABLE Sales (
   SaleID INT IDENTITY(1,1) PRIMARY KEY,
   SaleDate DATE,
   CustomerName VARCHAR(20),
   Product VARCHAR(20),
   Quantity INT,
   PricePerUnit INT,
   PaymentMethod VARCHAR(10)
);

-- 2. DML (Data Manipulation Language) - INSERT (Insert Data)
-- Inserting Records into the sales Table
INSERT INTO Sales ( CustomerName, Product, Quantity, PricePerUnit, PaymentMethod)
VALUES ('2025-05-01','Alice', 'Headphones', 2, 150.00, 'Card'),
       ('2025-05-02','Bob', 'Smartphone', 1, 700.00, 'Online'),
	   ('2025-05-03', 'Charlie', 'Charger' , 3, 25.00, 'Cash'),
	   ('2025-05-03', 'Alice', 'Laptop', 1, 1200.00, 'Card');

-- 3. DML (Data Manipulation Language) - UPDATE (Update Data)
-- a) Update the payment method to 'Online' for all sales made by 'Alice'.
UPDATE Sales
SET PaymentMethod = 'Online'
WHERE CustomerName = 'Alice';

-- b) Update the price per unit of 'Charger' to 30.00.
UPDATE Sales
SET PricePerUnit = 30.00
WHERE Product = 'Charger';

-- 4. DML (Data Manipulation Language) - DELETE (Delete Data)
-- a). Delete all sales records where the quantity is less than 2.
DELETE Sales
WHERE Quantity < =3;

-- b). Delete the record of any sale made by 'Bob'.
DELETE Sales
WHERE CustomerName = 'Bob';

-- 5. DQL (Data Query Language)
-- a) List all sales made using the 'Card' payment method.
SELECT * FROM Sales
WHERE PaymentMethod = 'Card';

SELECT *FROM Sales;

-- b). Calculate the total revenue generated (Quantity × PricePerUnit).
SELECT SUM(Quantity * PricePerUnit) AS Revenue
FROM Sales
/*SELECT SaleID, 
       SaleDate, 
	   CustomerName, 
	   Product,
	   Quantity,
	   PricePerUnit,
	   PaymentMethod,
	   (Quantity * PricePerUnit) AS TotalRevenue
FROM
Sales;*/

--c) Display the total quantity of each product sold.
SELECT Product, SUM(Quantity) AS TotalQuantitySold
FROM Sales
GROUP BY Product;

-- d). Show all sales where the quantity sold is more than 1.
SELECT * FROM Sales 
WHERE Quantity > 1;

--e). Find the customer who spent the most in a single transaction
SELECT TOP 1 CustomerName , Quantity * PricePerUnit AS TotalSpent
FROM Sales
ORDER BY TotalSpent DESC;
