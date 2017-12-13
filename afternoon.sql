-- ////////TABLE PEOPLE///////--

DROP TABLE IF EXISTS Person;

CREATE TABLE IF NOT EXISTS Person (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  Name TEXT NOT NULL,
  Age INTEGER,
  Height INTEGER,
  City TEXT,
  FavoriteColor TEXT
  );
  
INSERT INTO Person
  (Name, Age, Height, City, FavoriteColor)
VALUES
  ('Joe', 109, 480, 'NY', 'pee green'),
  ('Bob', 18, 509, 'AZ', 'purple'),
  ('Terry', 76, 746, 'CA', 'blue'),
  ('Josie', 11, 590, 'NV', 'mustard'),
  ('Jen', 45, 209, 'TX', 'lavender');

SELECT * FROM Person
ORDER BY Height DESC;

SELECT * FROM Person
ORDER BY Height;

SELECT * FROM Person
ORDER BY Age DESC;

SELECT * FROM Person
WHERE Age > 20;

SELECT * FROM Person
WHERE Age = 18;

SELECT * FROM Person
WHERE Age < 20 OR Age > 30;

SELECT * FROM Person
WHERE Age != 27;

SELECT * FROM Person
WHERE FavoriteColor != 'red';

SELECT * FROM Person
WHERE FavoriteColor != 'red' AND FavoriteColor != 'blue';

SELECT * FROM Person
WHERE FavoriteColor = 'orange' OR FavoriteColor = 'green';

SELECT * FROM Person
WHERE FavoriteColor IN ('orange', 'green', 'blue');

SELECT * FROM Person
WHERE FavoriteColor IN ('yellow', 'purple');

-- TABLE ORDERS --

DROP TABLE IF EXISTS Orders;

CREATE TABLE IF NOT EXISTS Orders (
  PersonID INTEGER,
  ProductName TEXT,
  ProductPrice FLOAT,
  Quantity INTEGER
  );
  
INSERT INTO Orders 
(PersonID, ProductName, ProductPrice, Quantity)
VALUES
(1, 'gum', 10.50, 5),
(1, 'water', 110.50, 55),
(2, 'gum', 10.50, 2),
(2, 'shoes', 70, 1),
(2, 'phone', 1000, 1);

SELECT * FROM Orders;

SELECT SUM(Quantity) FROM Orders;

SELECT SUM(ProductPrice * Quantity) FROM Orders;

SELECT SUM(ProductPrice * Quantity) FROM Orders
WHERE PersonID = 1;




-- TABLE ARTIST --

INSERT INTO Artist
(Name)
VALUES
('Billy-BOB'),
('Billy-GOAT'),
('Silly-GOAT');

SELECT * FROM Artist
ORDER BY Name DESC
LIMIT 10;

SELECT * FROM Artist
LIMIT 5;

SELECT * FROM Artist
WHERE Name LIKE 'Black%';

SELECT * FROM Artist
WHERE Name LIKE '%Black%';




-- TABLE EMPLOYEE --

SELECT FirstName, LastName FROM Employee
WHERE City = 'Calgary';

SELECT FirstName, LastName, BirthDate FROM Employee
ORDER BY BirthDate DESC
LIMIT 1;

SELECT * FROM Employee
WHERE ReportsTo = 2;

SELECT COUNT(*) FROM Employee
WHERE City = 'Lethbridge';

--  TABLE INVOICE --

SELECT COUNT(*) FROM Invoice
WHERE BillingCountry = 'USA';

SELECT * FROM Invoice
ORDER BY Total DESC
LIMIT 1;

SELECT * FROM Invoice
ORDER BY Total
LIMIT 1;

SELECT * FROM Invoice
WHERE Total > 5;

SELECT COUNT(*) FROM Invoice
WHERE Total < 5;

SELECT COUNT(*) FROM Invoice
WHERE BillingState IN ('CA','TX','AZ');

SELECT AVG(Total) FROM INVOICE;

SELECT SUM(Total) FROM INVOICE;

