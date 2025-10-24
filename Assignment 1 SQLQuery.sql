/***************************************************************************/
/***************************************************************************/
/*****************Assignment 1 *********************************************/
/***************************************************************************/
/***************************************************************************/
/***************************************************************************/
/*Salesman table creation */

CREATE TABLE Salesman (
SalesmanId INT,
Name VARCHAR(255),
Commission DECIMAL(10, 2),
City VARCHAR(255),
Age INT
);

/*Salesman table record insertion*/

INSERT INTO Salesman (SalesmanId, Name, Commission, City, Age)
VALUES
(101, 'Joe', 50, 'California', 17),
(102, 'Simon', 75, 'Texas', 25),
(103, 'Jessie', 105, 'Florida', 35),
(104, 'Danny', 100, 'Texas', 22),
(105, 'Lia', 65, 'New Jersey', 30);

/* Customer table creation */

CREATE TABLE Customer (
SalesmanId INT,
CustomerId INT,
CustomerName VARCHAR(255),
PurchaseAmount INT,
);

/****** Customer table record insertion *******/

INSERT INTO Customer (SalesmanId, CustomerId, CustomerName, PurchaseAmount)
VALUES
(101, 2345, 'Andrew', 550),
(103, 1575, 'Lucky', 4500),
(104, 2345, 'Andrew', 4000),
(107, 3747, 'Remona', 2700),
(110, 4004, 'Julia', 4545);

/********* Orders table Creation *******/

CREATE TABLE Orders 
(
OrderId int, 
CustomerId int, 
SalesmanId int, 
Orderdate Date, 
Amount money
)

INSERT INTO Orders Values
(5001,2345,101,'2021-07-01',550),
(5003,1234,105,'2022-02-15',1500)

/*********************Verify Tables****************************************************/

SELECT * FROM Orders
SELECT * FROM Customer
SELECT * FROM Salesman
/*****************************************************************************************************************************/
/* Tasks to be Performed */
/*****************************************************************************************************************************/
/*** Task 1: Insert a new record in your Orders table. */

INSERT INTO Orders Values
(5002,6789,102,'2025-05-16',1550)
SELECT * FROM Orders
/*****************************************************************************************************************************/
/*** Task 2 :
Add Primary key constraint for SalesmanId column in Salesman table. 
default constraint for City column in Salesman table. 
Add Foreign key constraint for SalesmanId column in Customer table. 
Add not null constraint in Customer_name column for the Customer table.  */

ALTER TABLE Salesman ALTER COLUMN SalesmanID INT NOT NULL;
ALTER TABLE Salesman ADD CONSTRAINT PK_Salesman PRIMARY KEY (SalesmanID); 


ALTER TABLE Salesman ADD DEFAULT ('Chicago') FOR City;

/* Delete customer 107 & 110 */
DELETE FROM Customer WHERE SalesManId IN (107, 110);
ALTER TABLE Customer ADD CONSTRAINT FK_Salesman FOREIGN KEY (SalesmanID) REFERENCES Salesman(SalesmanID);

ALTER TABLE Customer ALTER COLUMN CustomerName VARCHAR (255) NOT NULL;

/*****************************************************************************************************************************/
/*** Task 3: Fetch the data where the Customer’s name is ending with ‘N’ also get the purchase 
amount value greater than 500. */

SELECT * FROM Customer WHERE CustomerName LIKE '%N' AND PurchaseAmount > 500
/*****************************************************************************************************************************/
/*** Task 4: Using SET operators, retrieve the first result with unique SalesmanId values from two tables, 
and the other result containing SalesmanId with duplicates from two tables. */

SELECT * FROM Orders;
SELECT * FROM Customer;
SELECT * FROM Salesman;

SELECT  SalesmanId, CustomerID, Amount FROM Orders 
UNION
SELECT SalesmanId, CustomerID, PurchaseAmount  FROM Customer; 

SELECT  SalesmanId, CustomerID, Amount FROM Orders 
UNION ALL
SELECT SalesmanId, CustomerID, PurchaseAmount FROM Customer;
/*****************************************************************************************************************************/
/***Task 5:  Display the below columns which has the matching data. 
Orderdate, Salesman Name, Customer Name, Commission, and City which has the 
range of Purchase Amount between 500 to 1500. */

SELECT 
O.Orderdate, S.Name, C.CustomerName, S.Commission, S.City FROM Orders AS O
JOIN
Customer AS C ON O.SalesmanId = C.SalesmanId
JOIN
Salesman AS S ON C.SalesmanId = S.SalesmanId
WHERE C.PurchaseAmount BETWEEN 500 AND 1500

/*****************************************************************************************************************************/
/*** Task 6: Using right join fetch all the results from Salesman and Orders table. */
SELECT * FROM orders AS O   
RIGHT JOIN
Salesman AS S ON O.SalesmanId = S.SalesmanId

/***************************************************************************/
/***************************************************************************/
/*****************Assignment 1 complete ************************************/
/***************************************************************************/
/***************************************************************************/
/***************************************************************************/



