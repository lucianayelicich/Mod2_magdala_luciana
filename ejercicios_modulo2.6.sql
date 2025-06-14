USE tienda;

SELECT * FROM customers; 

-- ejercicio 1

SELECT customer_name, phone, address_line1, address_line2 FROM customers;

-- ejercicio 2

SELECT phone, address_line1, address_line2
FROM customers
WHERE country = 'USA';

-- ejercicio 3

SELECT contact_last_name, contact_first_name
FROM customers
WHERE address_line2 IS NULL;

-- ejercicio 4

SELECT *
FROM customers
WHERE state IS NOT NULL;

-- ejercicio 5

SELECT *
FROM customers
WHERE country = 'USA' AND state IS NULL;

-- ejercicio 6

SELECT customer_name, country
FROM customers
WHERE credit_limit > 10000;

-- ejercicios adicionales

-- ejercicio 4

USE northwind;

SELECT * FROM Employees;

SELECT EmployeeID, LastName, FirstName
FROM Employees;

-- ejercicio 5

SELECT * FROM Products;

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 0 AND 5;

-- ejercicio 6

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice IS NULL;

-- ejercicio 7

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice <15 AND ProductID <20;

-- ejercicio 8

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE NOT UnitPrice <15 AND ProductID <20;

-- ejercicio 9

SELECT * FROM Orders;

SELECT DISTINCT ShipCountry
FROM Orders;

-- ejercicio 10

SELECT ProductID,ProductName, UnitPrice
FROM Products
LIMIT 10;

-- ejercicio 11

SELECT ProductID,ProductName, UnitPrice
FROM Products
ORDER BY ProductID DESC
LIMIT 10;

-- ejercicio 12






