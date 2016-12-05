SELECT EmployeeID, FirstName, LastName, HireDate, City FROM Employees
WHERE City = 'London';



CREATE TABLE STATS
(

	ID INTEGER REFERENCES STATION(ID),

	MONTH INTEGER CHECK (MONTH BETWEEN 1 AND 12),
	TEMP_F REAL CHECK (TEMP_F BETWEEN -80 AND 150),
	RAIN_I REAL CHECK (RAIN_I BETWEEN 0 AND 100),
	PRIMARY KEY (ID, MONTH)

);



INSERT INTO STATS VALUES (13, 1, 57.4, 0.31);
INSERT INTO STATS VALUES (13, 7, 91.7, 5.15);
INSERT INTO STATS VALUES (44, 1, 27.3, 0.18);
INSERT INTO STATS VALUES (44, 7, 74.8, 2.11);



SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;
