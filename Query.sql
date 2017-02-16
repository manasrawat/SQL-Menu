CREATE TABLE weekA
(
DayID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
Day varchar(10) NOT NULL,
Starter varchar(500) NOT NULL,
Menu varchar(500) NOT NULL,
Dessert varchar(500) NOT NULL,
Price float NOT NULL
);

INSERT INTO weekA (Day, Starter, Menu, Dessert, Price)
VALUES ('Monday', 'Garlic Bread', 'Chicken', 'Ice Cream', 3.99),
	   ('Tuesday', 'Chicken Nuggets', 'Pizza', 'Chocolate', 3.59),
       ('Wednesday', 'Onion rings', 'Cheeseburger', 'Kaju Khatri', 4.29),
       ('Thursday', 'Bread', 'Pao Badji', 'Chocolate moose', 3.69),
       ('Friday', 'Gol Gappe', 'Paneer Naan', 'Gulab Jaman', 3.69),
	   ('Saturday', 'Curry', 'Curry', 'Curry', 3.59);

SELECT * FROM weekA;

CREATE TABLE orders
(
OrderID int NOT NULL IDENTITY(113,2) PRIMARY KEY,
Day varchar(10) NOT NULL
);

INSERT INTO orders (Day)
VALUES ('Tuesday'),
	   ('Thursday');

SELECT weekA.Day, orders.OrderID
FROM weekA
JOIN orders
ON weekA.Day=orders.Day
ORDER BY orders.OrderID;

UPDATE weekA
SET Starter='Paneer Tikka'
WHERE Price=3.69;

UPDATE weekA
SET Starter='Fries'
WHERE Day='Tuesday';

DELETE FROM weekA
WHERE Day='Saturday'

SELECT * FROM weekA;
SELECT * FROM orders;
