CREATE TABLE EmployeeInfo_26thApril
(
EmployeeID INTEGER,
EmployeeName VARCHAR (50),
Salary INTEGER
)
SELECT * FROM EmployeeInfo_26thApril
SELECT EmployeeID, EmployeeName FROM EmployeeInfo_26thApril
ALTER TABLE EmployeeInfo_26thApril ADD City VARCHAR (50)
/* Exercise */
ALTER TABLE EmployeeInfo_26thApril ADD CountryName VARCHAR (50)
SELECT EmployeeID, CountryName FROM EmployeeInfo_26thApril
DROP TABLE EmployeeInfo_26thApril



CREATE TABLE EmployeeInfo_26thApril
(
EmployeeID INTEGER,
EmployeeName VARCHAR (50),
Salary INTEGER,
City VARCHAR (50)
)
ALTER TABLE EmployeeInfo_26thApril DROP COLUMN City;

/****** DML *****/

INSERT INTO EmployeeInfo_26thApril (EmployeeID, EmployeeName, Salary) 
VALUES (1, 'Sahil Jaiswal', 10000);
INSERT INTO EmployeeInfo_26thApril (EmployeeID, EmployeeName, Salary) 
VALUES (2, 'Sudha', 20000);
INSERT INTO EmployeeInfo_26thApril (EmployeeID, Salary)
VALUES (3,  10000);

INSERT INTO EmployeeInfo_26thApril (EmployeeID, EmployeeName, Salary) 
VALUES (4, 'Raj', 20000), (5, 'Amrita', 32000), (6, 'Shikar', 50000);

INSERT INTO EmployeeInfo_26thApril (EmployeeID, EmployeeName, Salary) 
VALUES (7, 'Suman', 130000), (8, NULL, 42000), (9, 'Shubham', NULL);

DELETE FROM EmployeeInfo_26thApril

SELECT * FROM EmployeeInfo_26thApril WHERE EmployeeID = 2;
SELECT * FROM EmployeeInfo_26thApril WHERE EmployeeID = 7;

UPDATE EmployeeInfo_26thApril SET Salary = 60000 WHERE EmployeeID = 7
UPDATE EmployeeInfo_26thApril SET Salary = 54000, EmployeeName = 'Shoit' WHERE EmployeeID = 7

DELETE FROM EmployeeInfo_26thApril
DELETE FROM EmployeeInfo_26thApril WHERE EmployeeID = 5

GRANT SELECT ON EmployeeInfo_26thApril TO USER_A
REVOKE INSERT ON EmployeeInfo_26thApril FROM USER_A
GRANT SELECT, INSERT, DELETE ON EmployeeInfo_26thApril TO USER_A

CREATE TABLE TinyInt_Test_26thApril
(
ID TINYINT
)

INSERT INTO TinyInt_Test_26thApril VALUES (-255) /* Fail to Execute  because it is not within the Range 0 to 255 */
INSERT INTO TinyInt_Test_26thApril VALUES (0)    /* Excute Successfully  because it is within the Range 0 to 255 */
INSERT INTO TinyInt_Test_26thApril VALUES (-1)   /* Fail to Execute  because it is not within the Range 0 to 255 */
INSERT INTO TinyInt_Test_26thApril VALUES (256)  /* Fail to Execute  because it is not within the Range 0 to 255 */
INSERT INTO TinyInt_Test_26thApril VALUES (254)  /* Excute Successfully  because it is within the Range 0 to 255 */

CREATE TABLE SmallInt_Test_26thApril
(
ID SMALLINT
)
INSERT INTO SmallInt_Test_26thApril (ID) VALUES (35000) /* Fail to Execute  because it is not within the Range -32,768 to 32,767 */
INSERT INTO SmallInt_Test_26thApril (ID) VALUES (-33000)/* Fail to Execute  because it is not within the Range -32,768 to 32,767 */
INSERT INTO SmallInt_Test_26thApril (ID) VALUES (10000)/* Excute Successfully  because it is within the Range -32,768 to 32,767 */
INSERT INTO SmallInt_Test_26thApril (ID) VALUES (-10000)/* Excute Successfully  because it is within the Range -32,768 to 32,767 */

CREATE TABLE Decimal_Test_26thApril
(
Price DECIMAL (5,2)
)
INSERT INTO Decimal_Test_26thApril (Price) VALUES (123.12) /* Execute Successfully */
INSERT INTO Decimal_Test_26thApril (Price) VALUES (9831.12) /*Error */
INSERT INTO Decimal_Test_26thApril (Price) VALUES (87.32) /* Execute Succefully */
INSERT INTO Decimal_Test_26thApril (Price) VALUES (8.32451) /* Execute Succefully, it will round of the value after the decimal */

CREATE TABLE CHAR_Test_26thApril
(
FirstName CHAR(10)
)
INSERT INTO Char_Test_26thApril (FirstName) VALUES ('Sahil')
INSERT INTO Char_Test_26thApril (FirstName) VALUES ('Raj')

SELECT *FROM Char_Test_26thApril
INSERT INTO Char_Test_26thApril (FirstName) VALUES ('ABCDEFGHIJKLMNOPQ')

CREATE TABLE VARCHAR_Test_27thApril
(
FirstName CHAR(10)
)
INSERT INTO VARChar_Test_27thApril (FirstName) VALUES ('Sahil')
INSERT INTO VARChar_Test_27thApril (FirstName) VALUES ('Raj')

SELECT *FROM VARChar_Test_27thApril

CREATE TABLE VARCHAR_Test_27thApril
(
FirstName CHAR(8001)
)

INSERT INTO VARChar_Test_27thApril (FirstName) VALUES ('丌不与丏')
SELECT *FROM VARChar_Test_27thApril


CREATE TABLE NVARCHAR_Test_27thApril
(
FirstName NCHAR(100)
)
INSERT INTO NVARCHAR_Test_27thApril (FirstName) VALUES (N'丌不与丏')
SELECT *FROM NVARCHAR_Test_27thApril 

SELECT GETDATE()

CREATE TABLE DATE_Test_27thApril
(
OrderDate DATE
)
INSERT INTO DATE_Test_27thApril (OrderDate) VALUES ('2025-05-07 16:26:06.603')
INSERT INTO DATE_Test_27thApril (OrderDate) VALUES ('2025-05-07')
SELECT *FROM DATE_Test_27thApril

SELECT GETUTCDATE()


CREATE TABLE TIME_Test_27thApril
(
OrderTime TIME
)
INSERT INTO TIME_Test_27thApril (OrderTime) VALUES ('16:26:06.603')
INSERT INTO TIME_Test_27thApril (OrderTime) VALUES ('2025-05-07 16:26:06.603')
SELECT *FROM TIME_Test_27thApril

CREATE TABLE Sales_Data_Test_27thApril
(
OrderDateTime DATETIME
)
INSERT INTO Sales_Data_Test_27thApril (OrderDateTime) VALUES (GETDATE ())
INSERT INTO Sales_Data_Test_27thApril (OrderDateTime) VALUES ('2025-05-07 16:26:06.603')
SELECT *FROM Sales_Data_Test_27thApril


SELECT CAST(GETDATE () AS TIME)

CREATE TABLE StudentInfo_27thApril
(
StudentID INT NOT NULL,
StudentName VARCHAR (50),
RollNo INT 
)
INSERT INTO StudentInfo_27thApril (StudentID, StudentName, RollNo)
VALUES (NULL, 'Shail', 1)


CREATE TABLE ProductMaster_27thApril
(
ProductID INT UNIQUE,
ProductName VARCHAR (50)
)
INSERT INTO ProductMaster_27thApril (ProductID, ProductName)
VALUES (1, 'Car')
INSERT INTO ProductMaster_27thApril (ProductID, ProductName)
VALUES (2, 'Fan')
INSERT INTO ProductMaster_27thApril (ProductID, ProductName)
VALUES (2, 'MotorBike')
SELECT * FROM ProductMaster_27thApril


CREATE TABLE Customer_MasterData_27thApril
(
CustomerID INT NOT NULL UNIQUE,
CustomerName VARCHAR (50)
)

INSERT INTO Customer_MasterData_27thApril (CustomerID, CustomerName) 
VALUES (NULL, 'Shail');
INSERT INTO Customer_MasterData_27thApril (CustomerID, CustomerName) 
VALUES (1, 'Shail');
SELECT * FROM Customer_MasterData_27thApril

ALTER TABLE Customer_MasterData_27thApril ALTER COLUMN CustomerID INT NULL

ALTER TABLE Customer_MasterData_27thApril DROP CONSTRAINT UQ__Customer__A4AE64B994D1EA85

INSERT INTO Customer_MasterData_27thApril (CustomerID, CustomerName) 
VALUES (1, 'Shail');
INSERT INTO Customer_MasterData_27thApril (CustomerID, CustomerName) 
VALUES (1, 'Shail');
SELECT * FROM Customer_MasterData_27thApril

CREATE TABLE EmployeeDefault_27thApril
(
EmployeeID INT,
EmployeeName VARCHAR (50),
Country VARCHAR (50) DEFAULT ('India')
)

INSERT INTO EmployeeDefault_27thApril (EmployeeID, EmployeeName, Country) 
VALUES (1, 'Sahil', 'USA')
INSERT INTO EmployeeDefault_27thApril (EmployeeID, EmployeeName) 
VALUES (2, 'Varsha')
SELECT * FROM EmployeeDefault_27thApril
INSERT INTO EmployeeDefault_27thApril (EmployeeID, EmployeeName, Country) 
VALUES (3, 'Vinayak', NULL)


DROP TABLE Unique_Constraint_Check_27thApril
CREATE TABLE Unique_Constraint_Check_27thApril
(
ID INT,
)
INSERT INTO Unique_Constraint_Check_27thApril (ID) Values (1)
INSERT INTO Unique_Constraint_Check_27thApril (ID) Values (2)
INSERT INTO Unique_Constraint_Check_27thApril (ID) Values (5)
INSERT INTO Unique_Constraint_Check_27thApril (ID) Values (5)

ALTER TABLE Unique_Constraint_Check_27thApril ADD 
CONSTRAINT UQ_ID UNIQUE (ID)

INSERT INTO Unique_Constraint_Check_27thApril (ID) Values (1)

SELECT * FROM Unique_Constraint_Check_27thApril

CREATE TABLE SubjectDetails_27thApril
(
SubjectID INT PRIMARY KEY,
SubjectName VARCHAR (50)
)
INSERT INTO SubjectDetails_27thApril (SubjectID, SubjectName) Values (1, 'Math')
INSERT INTO SubjectDetails_27thApril (SubjectID, SubjectName) Values (2, 'Science')
INSERT INTO SubjectDetails_27thApril (SubjectID, SubjectName) Values (NULL, 'Science')


CREATE TABLE Employees
(
EmployeeID INT PRIMARY KEY,
Email VARCHAR (50) NOT NULL,
FirstName VARCHAR (50) NOT NULL,
LastName VARCHAR (50) NOT NULL,
JoinDate DATETIME DEFAULT (GETDATE())
)

INSERT INTO Employees (EmployeeID, Email, FirstName, LastName) 
VALUES (1, 'Karthik.Kandavel@gmail.com', 'Karthik', 'Kandavel') 

SELECT * FROM Employees
DROP TABLE VoterList_27thApril
CREATE TABLE VoterList_27thApril
(
VoterID INT,
VoterName VARCHAR (50),
Age INT CHECK (Age >= 18),
Country VARCHAR (50) CHECK (Country = 'India')
)

INSERT INTO VoterList_27thApril (VoterID, VoterName, Age) 
VALUES (1, 'Sahil', 17)

INSERT INTO VoterList_27thApril (VoterID, VoterName, Age, Country) 
VALUES (2, 'Shyam', 24, 'India')

INSERT INTO VoterList_27thApril (VoterID, VoterName, Age) 
VALUES (1, 'Sai', 24)

SELECT * FROM VoterList_27thApril WHERE Country = NULL
SELECT * FROM VoterList_27thApril WHERE Country IS NULL
SELECT * FROM VoterList_27thApril WHERE Country IS NOT NULL


SELECT * FROM EmployeeDefault_27thApril WHERE EmployeeID = 1
SELECT * FROM EmployeeDefault_27thApril WHERE EmployeeID IN (1, 3)
SELECT * FROM EmployeeDefault_27thApril WHERE EmployeeID <> 1
SELECT * FROM EmployeeDefault_27thApril WHERE EmployeeID NOT IN (1, 3)

SELECT * FROM EmployeeInfo_26thApril WHERE Salary = 10000
SELECT * FROM EmployeeInfo_26thApril WHERE Salary >= 10000 AND Salary <=80000

SELECT * FROM EmployeeInfo_26thApril WHERE Salary BETWEEN 10000 AND 80000
SELECT * FROM EmployeeInfo_26thApril WHERE EmployeeName LIKE 'S%'
SELECT * FROM EmployeeInfo_26thApril WHERE EmployeeName LIKE '%r'
SELECT * FROM EmployeeInfo_26thApril WHERE EmployeeName LIKE '%a%'
SELECT * FROM EmployeeInfo_26thApril WHERE EmployeeName LIKE '_a%'
SELECT * FROM EmployeeInfo_26thApril WHERE EmployeeName LIKE '__h%'


DROP TABLE EmployeeDetails
CREATE TABLE EmployeeDetails
(
EmployeeID INT PRIMARY KEY, 
FirstName VARCHAR (50),
LastName VARCHAR (50),
DepartmentID INT,
ClientID INT,
DOB DATE,
DOJ DATE,
Salary INT,
Gender VARCHAR (10),
FatherName VARCHAR (50),
ManagerID INT
)

INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, DOJ, Salary, Gender, FatherName, ManagerID)
VALUES (1, 'Sharil', 'R', 3, 1, '2000-01-20', NULL, 100000, 'F', NULL, NULL);
INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, DOJ, Salary, Gender, FatherName, ManagerID)
VALUES (2, 'Sanjay', 'Patil', 1, 1, '1995-06-11', NULL, NULL, 'M', NULL, 1);
INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, DOJ, Salary, Gender, FatherName, ManagerID)
VALUES (3, 'Vishal', 'Kumar', 2, 1, '1999-03-29', NULL, 30000, 'M', NULL, 4);
INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, DOJ, Salary, Gender, FatherName, ManagerID)
VALUES (4, 'Prasanth', 'Kumar', 2, 2, '1992-02-14', NULL, 36000, 'M', NULL, NULL);
INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, DOJ, Salary, Gender, FatherName, ManagerID)
VALUES (5, 'Shyam', 'Kumar', 3, 3, NULL, NULL, 52000, 'M', NULL, NULL);
INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, DOJ, Salary, Gender, FatherName, ManagerID)
VALUES (6, 'Shubam', 'Gupta', 3, NULL, NULL, NULL, 60000, 'M', NULL, NULL);
INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, DOJ, Salary, Gender, FatherName, ManagerID)
VALUES (7, 'Laxmi', 'Kasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, DOJ, Salary, Gender, FatherName, ManagerID)
VALUES (8, 'Syed','K', 1, 1, NULL, NULL, 52000, 'M', NULL, NULL);

INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, DOJ, Salary, Gender, FatherName, ManagerID)
VALUES (9, 'Arun','Thakar', 1, NULL, NULL, NULL, 80000, 'M', NULL, NULL);
INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, DOJ, Salary, Gender, FatherName, ManagerID)
VALUES (10, 'Sahil','Jaiswal', NULL, NULL, NULL, NULL, 87000, 'M', NULL, NULL);
INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, DOJ, Salary, Gender, FatherName, ManagerID)
VALUES (11, 'Anurag','Sharma', NULL, NULL, NULL, NULL, 87000, 'M', NULL, NULL);
INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, DOJ, Salary, Gender, FatherName, ManagerID)
VALUES (12, 'Rajeev','Kumar', 1, NULL, NULL, NULL, 87000, 'M', NULL, NULL);

/*INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, DOJ, Salary, Gender, FatherName, ManagerID)
VALUES (13, 'Vianayak','Kalnayak', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL); used for Foreign Key lesson */

SELECT * FROM EmployeeDetails
DROP TABLE Department
CREATE TABLE Department
(
DepartmentID INT,
DepartmentName VARCHAR (50)
)
INSERT INTO Department (DepartmentID, DepartmentName) VALUES (1, 'IT');
INSERT INTO Department (DepartmentID, DepartmentName) VALUES (2, 'Accounts');
INSERT INTO Department (DepartmentID, DepartmentName) VALUES (3, 'Eelctronics');
INSERT INTO Department (DepartmentID, DepartmentName) VALUES (4, 'Civil');
INSERT INTO Department (DepartmentID, DepartmentName) VALUES (5, 'HR');
INSERT INTO Department (DepartmentID, DepartmentName) VALUES (6, 'Sports');
INSERT INTO Department (DepartmentID, DepartmentName) VALUES (7, 'Business');

/*INSERT INTO Department (DepartmentID, DepartmentName) VALUES (1, 'Mechanical'); used for Foreign Key lesson */

INSERT INTO Department (DepartmentID, DepartmentName) VALUES (1, 'IT');

SELECT * FROM EmployeeDetails WHERE DepartmentID = 1 and ClientID = 1
SELECT * FROM EmployeeDetails WHERE DepartmentID = 3 OR (ClientID = 2 AND Salary=36000)

SELECT * FROM EmployeeDetails WHERE DepartmentID = 1
UNION
SELECT * FROM EmployeeDetails WHERE ClientID = 1

SELECT * FROM EmployeeDetails WHERE DepartmentID = 1 OR ClientID = 1

CREATE TABLE Employee_History
(
EmployeeID INT,
FirstName VARCHAR (50),
LastName VARCHAR (50),
Salary INT,
DepartmentID INT
)

INSERT INTO Employee_History (EmployeeID, FirstName, LastName, Salary, DepartmentID)
VALUES (10, 'Sahil', 'Jaiswal', 10000, 1)

INSERT INTO Employee_History (EmployeeID, FirstName, LastName, Salary, DepartmentID)
VALUES (12, 'Rajeev', 'Kumar', 10000, 1)

SELECT * FROM Employee_History
SELECT * FROM EmployeeDetails

SELECT EmployeeID, FirstName, LastName, Salary FROM EmployeeDetails WHERE DepartmentID = 1
UNION
SELECT EmployeeID, FirstName, LastName, Salary FROM Employee_History


SELECT * FROM EmployeeDetails WHERE DepartmentID = 1
UNION ALL
SELECT * FROM EmployeeDetails WHERE ClientID = 1

SELECT EmployeeID, FirstName, LastName, Salary FROM EmployeeDetails WHERE DepartmentID = 1
UNION ALL
SELECT EmployeeID, FirstName, LastName, Salary FROM Employee_History


SELECT * FROM EmployeeDetails WHERE DepartmentID = 1
INTERSECT
SELECT * FROM EmployeeDetails WHERE ClientID = 1

SELECT * FROM EmployeeDetails WHERE DepartmentID = 1 AND ClientID = 1

DELETE FROM Employee_History
SELECT * FROM Employee_History

SELECT EmployeeID FROM EmployeeDetails WHERE DepartmentID = 1
INTERSECT
SELECT EmployeeID FROM Employee_History

SELECT EmployeeID  FROM EmployeeDetails WHERE DepartmentID = 1
INTERSECT
SELECT EmployeeID FROM Employee_History WHERE DepartmentID = 1



SELECT * FROM EmployeeDetails WHERE DepartmentID = 1
EXCEPT
SELECT * FROM EmployeeDetails WHERE ClientID = 1

CREATE TABLE EmployeeProject1Mapping
(
EmployeeID INT,
ProjectID INT
)

CREATE TABLE EmployeeProject2Mapping
(
EmployeeID INT,
ProjectID INT
)

INSERT INTO EmployeeProject1Mapping (EmployeeID, ProjectID) VALUES (1, 1)
INSERT INTO EmployeeProject1Mapping (EmployeeID, ProjectID) VALUES (2, 1)

INSERT INTO EmployeeProject2Mapping (EmployeeID, ProjectID) VALUES (1, 2)
INSERT INTO EmployeeProject2Mapping (EmployeeID, ProjectID) VALUES (3, 2)
INSERT INTO EmployeeProject2Mapping (EmployeeID, ProjectID) VALUES (4, 2)
INSERT INTO EmployeeProject2Mapping (EmployeeID, ProjectID) VALUES (5, 2)


SELECT * FROM EmployeeProject1Mapping
SELECT * FROM EmployeeProject2Mapping

/* Exercise
1.	Write a query to display those employee ID who is working in both the project? 
Here Employee ID must be present in both the table */
SELECT EmployeeID FROM EmployeeProject1Mapping 
INTERSECT
SELECT EmployeeID FROM EmployeeProject2Mapping 
/*2.	Write a query to display those employee ID who is working in Project ID 1 but not in Project ID 2?
 Here we are looking for employee working in project id 1 first which mean same employee should not be working project id 2 */

 SELECT EmployeeID FROM EmployeeProject1Mapping 
 EXCEPT
 SELECT EmployeeID FROM EmployeeProject2Mapping 

/*3.	Write a Query to display all the employee and Project mapping info? 
Here we wanted to display all the employees and their projects*/
 SELECT EmployeeID FROM EmployeeProject1Mapping 
 UNION ALL
 SELECT EmployeeID FROM EmployeeProject2Mapping  

 SELECT * FROM EmployeeDetails WHERE DepartmentID = 1
 UNION ALL
 SELECT * FROM EmployeeDetails WHERE ClientID = 1
 INTERSECT
 SELECT * FROM EmployeeDetails WHERE Salary = 52000

 SELECT * FROM EmployeeDetails 
 SELECT * FROM Department 

 SELECT EmployeeID, FirstName, LastName, DepartmentName FROM EmployeeDetails
 INNER JOIN
 Department ON EmployeeDetails.DepartmentID = Department.DepartmentID

 
 CREATE TABLE Department_FK
 (
 DepartmentID INT PRIMARY KEY,
 DepartmentName VARCHAR(50)
 )
 
 CREATE TABLE EmployeeInfo_FK
 (
 EmployeeID INT,
 EmployeeName VARCHAR(50),
 DeptID INT
 CONSTRAINT FK_DeptID FOREIGN KEY (DeptID) REFERENCES Department_FK(DepartmentID)
 )

 INSERT INTO EmployeeInfo_FK (EmployeeID, EmployeeName, DeptID) VALUES (1, 'Sahil', 1)
 INSERT INTO EmployeeInfo_FK (EmployeeID, EmployeeName, DeptID) VALUES (1, 'Sahil', NULL)


SELECT EmployeeID, FirstName, LastName, DepartmentName FROM EmployeeDetails
INNER JOIN
Department ON EmployeeDetails.DepartmentID = Department.DepartmentID


SELECT EmployeeID, FirstName, LastName, DepartmentName FROM EmployeeDetails AS E
LEFT JOIN
Department AS D ON E.DepartmentID = D.DepartmentID


SELECT EmployeeID, FirstName, LastName, DepartmentName FROM EmployeeDetails AS E
RIGHT JOIN
Department AS D ON E.DepartmentID = D.DepartmentID

SELECT EmployeeID, FirstName, LastName, DepartmentName FROM Department AS D 
RIGHT JOIN
EmployeeDetails AS E ON  D.DepartmentID = E.DepartmentID

SELECT EmployeeID, FirstName, LastName, DepartmentName FROM EmployeeDetails AS E
FULL OUTER JOIN
Department AS D ON E.DepartmentID = D.DepartmentID

SELECT EmployeeID, FirstName, LastName, DepartmentName FROM EmployeeDetails AS E
FULL JOIN
Department AS D ON E.DepartmentID = D.DepartmentID


SELECT EmployeeID, FirstName, LastName, DepartmentName FROM EmployeeDetails
CROSS JOIN
Department


CREATE TABLE EmployeeTimeSheetInfo
(
EmployeeID INT,
CalendarDate DATE,
Hours TIME,
Description VARCHAR (50)
)

CREATE TABLE EmployeeInfo
(
EmployeeID INT,
EmployeeName VARCHAR (50)
)

CREATE TABLE CalendarInfo
(
CalendarID INT,
CalendarDate DATE
)

INSERT INTO EmployeeInfo (EmployeeID, EmployeeName) VALUES (1, 'Thomas Muller');
INSERT INTO EmployeeInfo (EmployeeID, EmployeeName) VALUES (2, 'Manuel Neuer');

INSERT INTO CalendarInfo (CalendarID, CalendarDate) VALUES (1, '2025-05-12');
INSERT INTO CalendarInfo (CalendarID, CalendarDate) VALUES (2, '2025-05-13');
INSERT INTO CalendarInfo (CalendarID, CalendarDate) VALUES (3, '2025-05-14');
INSERT INTO CalendarInfo (CalendarID, CalendarDate) VALUES (4, '2025-05-15');
INSERT INTO CalendarInfo (CalendarID, CalendarDate) VALUES (5, '2025-05-16');

SELECT * FROM EmployeeInfo
SELECT * FROM CalendarInfo


SELECT DepartmentID FROM Department
EXCEPT
SELECT DepartmentID FROM EmployeeDetails

SELECT DepartmentName FROM Department AS D
LEFT JOIN
EmployeeDetails AS ED ON D.DepartmentID = ED.DepartmentID WHERE ED.DepartmentID IS NULL

SELECT EmployeeID, FirstName, LastName, DepartmentName FROM EmployeeDetails AS ED
INNER JOIN
Department AS D ON ED.DepartmentID = D.DepartmentID
WHERE
D.DepartmentName = 'IT';

SELECT EmployeeID, FirstName, LastName, DepartmentName, Salary FROM EmployeeDetails AS ED
LEFT JOIN
Department AS D ON ED.DepartmentID = D.DepartmentID
WHERE
ED.Salary > 50000


SELECT UPPER ('Gotze')

SELECT FirstName, UPPER(FirstName) from EmployeeDetails

SELECT FirstName, LOWER(FirstName) from EmployeeDetails

SELECT LTRIM ('              Thomas')

SELECT FirstName, LTRIM (FirstName) from EmployeeDetails

UPDATE EmployeeDetails SET FirstName = 'Vishal' WHERE EmployeeID = 3

SELECT RTRIM ('Lahm         ')

SELECT LTRIM(RTRIM('        Lahm             '));

SELECT TRIM('        Lahm             ');

SELECT REVERSE('STRESSED')

SELECT LEN('Inky Pinky Ponky  Father had a Donkey   ')

SELECT FirstName, LastName, CONCAT(FirstName,' ',LastName)
FROM
EmployeeDetails;

SELECT FirstName, SUBSTRING(FirstName, 1, 3) FROM EmployeeDetails

SELECT REPLACE('Victoria', 'c', 't')

SELECT CONCAT (SUBSTRING('Vinayaka',3, 1), SUBSTRING('Vinayaka',6, 1))

SELECT DAY(GETDATE())
SELECT DAY('2025-05-09')

SELECT DOB, MONTH(DOB), YEAR(DOB) FROM EmployeeDetails

SELECT DATEADD(dd, 5, GETDATE())

SELECT DATEADD(mm, 10, GETDATE())

SELECT DATEADD(yy, 5, GETDATE())

SELECT DOB, 
DATEADD(dd, 7, DATEADD(mm, 4, DATEADD(yy, 3, DOB)))
FROM EmployeeDetails

SELECT DATEDIFF (dd, GETDATE(), '2025-07-11')

SELECT DATEDIFF (mm, GETDATE(), '2025-07-11')

SELECT DATENAME(month, GETDATE())

SELECT DOB, DATENAME(month, DOB)
FROM EmployeeDetails

SELECT DATENAME(weekday, GETDATE())

SELECT DOB, DATENAME(weekday, DOB)
FROM EmployeeDetails



/******* 05/09/2025 -  Class Room ********/
/** Stoiring the result into a table method 1 */
SELECT ED.EmployeeID, ED.FirstName, ED.LastName, D.DepartmentName 
INTO Employee_Department_Data 
FROM EmployeeDetails AS ED
INNER JOIN
Department AS D ON ED.DepartmentID = D.DepartmentID

SELECT * FROM Employee_Department_Data 
/** Stoiring the result into a table method 2 */
CREATE TABLE EmployeeDepartmentData 
(
EmployeeID INT,
FirstName VARCHAR (50),
LastName VARCHAR (50),
DepartmentName VARCHAR (50)
)

SELECT * FROM EmployeeDepartmentData 
INSERT INTO EmployeeDepartmentData (EmployeeID, FirstName, LastName, DepartmentName) 
SELECT ED.EmployeeID, ED.FirstName, ED.LastName, D.DepartmentName 
FROM EmployeeDetails AS ED
INNER JOIN
Department AS D ON ED.DepartmentID = D.DepartmentID



SELECT POWER (2,3)
SELECT SQRT (16)
SELECT ABS(-10)
SELECT ABS(10)
SELECT FLOOR(-11.99)

SELECT CEILING(100.54)

	SELECT MAX(Salary) FROM EmployeeDetails
	SELECT MIN(Salary) FROM EmployeeDetails
	SELECT SUM(Salary) FROM EmployeeDetails
	SELECT COUNT(*) FROM EmployeeDetails
SELECT COUNT(Salary) FROM EmployeeDetails
SELECT COUNT(DOB) FROM EmployeeDetails /*NULL not counted */
SELECT AVG(Salary) FROM EmployeeDetails /*NULL not counted */
SELECT * FROM EmployeeDetails

SELECT
DepartmentID,
COUNT (*)
FROM
EmployeeDetails
GROUP BY DepartmentID


SELECT DepartmentName,
COUNT (*)
From EmployeeDetails AS ED
INNER JOIN
Department AS D ON ED.DepartmentID = D.DepartmentID WHERE D.DepartmentName = 'IT'
GROUP BY D.DepartmentName 


SELECT DepartmentName,
COUNT (*) AS EmployeeCount,
MAX (Salary) AS MaximumSalary,
MIN (Salary) AS MinimumSalary,
AVG (Salary) AS AverageSalary,
COUNT (*) - COUNT (Salary) AS MissingSalary
From EmployeeDetails AS ED
INNER JOIN
Department AS D ON ED.DepartmentID = D.DepartmentID 
GROUP BY D.DepartmentName 

SELECT 
D.DepartmentName,
COUNT(*) AS EmployeeCount,
MAX(Salary) AS MAX_Salary,
MIN(Salary) AS MIN_Salary,
AVG(Salary) AS AVG_Salary,
COUNT(*) - COUNT(Salary) AS MissingSalaryCount
FROM
EmployeeDetails AS ED
LEFT JOIN Department AS D ON ED.DepartmentID = D.DepartmentID
GROUP BY (D.DepartmentName)

/* HAVING Clause
We can use this HAVING to filter the data after aggregation
Write a Query to display those department where minimum two employee is working
*/

SELECT DepartmentID,
COUNT (*) AS EmployeeCount
From EmployeeDetails
GROUP BY DepartmentID
HAVING COUNT(*) >= 2


SELECT DepartmentID,
COUNT (*) AS EmployeeCount
From EmployeeDetails
GROUP BY DepartmentID
HAVING COUNT(*) = 3

/* Write a query to display DepartmentName, EmployeeCount, Salary where minimum 3 Employee 
is working and the total salary is more than 200000 */


SELECT D.DepartmentName,
COUNT (*) AS EmployeeCount,
SUM (Salary) AS TotalSalary
FROM EmployeeDetails AS ED
INNER JOIN
Department AS D ON ED.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName
HAVING COUNT(*) >= 3 AND SUM (Salary) > 20000


SELECT * FROM EmployeeDetails 

SELECT * FROM 
EmployeeDetails 
ORDER BY Salary DESC

SELECT 
ROW_NUMBER ( ) OVER (ORDER BY Salary DESC) AS Row_ID,
* FROM 
EmployeeDetails 


SELECT 
RANK ( ) OVER (ORDER BY Salary DESC) AS Rank_ID,
* FROM 
EmployeeDetails 

SELECT 
DENSE_RANK ( ) OVER (ORDER BY Salary DESC) AS DenseRank_ID,
* FROM 
EmployeeDetails 

SELECT * FROM
(
SELECT
DENSE_RANK () OVER (ORDER BY Salary DESC) AS DenseRank_ID,
* FROM 
EmployeeDetails 
) AS W
WHERE DenseRank_ID = 3


 /* NTILE(2) This means the data is divided into two groups */
SELECT
NTILE(2) OVER (ORDER BY Salary DESC) AS NtileID,          
*
FROM 
EmployeeDetails 


SELECT
NTILE(5) OVER (ORDER BY Salary DESC) AS NtileID,          
*
FROM 
EmployeeDetails 

/*Write a function which will accept a EmployeeID as a parameter and return a Salary for that employee */

CREATE FUNCTION udf_Get_Employee_Salary
(
@EmployeeID INT
)
RETURNS INT
AS
BEGIN
RETURN
(
SELECT Salary FROM EmployeeDetails WHERE EmployeeID = @EmployeeID
)
END


SELECT dbo.udf_Get_Employee_Salary (5)
DROP FUNCTION udf_Get_Employee_Salary


CREATE FUNCTION udf_Get_Employeecount_By_Department_11thMay
(
@DepartmentName VARCHAR (50)
)
RETURNS INT
AS
BEGIN

RETURN
(
SELECT 
COUNT (*)
FROM
EmployeeDetails AS ED
INNER JOIN
Department AS D ON ED.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = @DepartmentName
)
END

SELECT dbo.udf_Get_Employeecount_By_Department_11thMay ('IT')

/* Modifying the Function */


ALTER FUNCTION udf_Get_Employeecount_By_Department_11thMay
(
@DepartmentName VARCHAR (50)
)
RETURNS INT
AS
BEGIN

RETURN
(
SELECT 
COUNT (*)
FROM
EmployeeDetails AS ED
INNER JOIN
Department AS D ON ED.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = @DepartmentName AND Salary > 30000
)
END

SELECT dbo.udf_Get_Employeecount_By_Department_11thMay ('IT')

DROP FUNCTION udf_Get_Employeecount_By_Department_11thMay


/*Sorting by more than one field */

SELECT * FROM EmployeeDetails
ORDER BY Salary , EmployeeID

/* TABLE VALUED FUNCTION SYNTAX */

CREATE FUNCTION function_Name
(
@ParameterName_1 Data_Type
@ParameterName_2 Data_Type
)
RETURNS table
RETURN
(
)

CREATE FUNCTION udf_get_Employee_Salary_11thMay
(
@Salary INT
)
RETURNS TABLE
RETURN
(
SELECT 
EmployeeID, FirstName, LastName, DepartmentName, Salary
FROM 
EmployeeDetails AS ED
LEFT JOIN 
Department AS D ON ED.DepartmentID = D.DepartmentID
WHERE Salary > @Salary
)

/* Calling a Table Valued Function - This is similar to calling table*/

SELECT * FROM udf_get_Employee_Salary_11thMay (10000)

SELECT EmployeeID, Firstname, LastName FROM udf_get_Employee_Salary_11thMay (80000)

DROP FUNCTION udf_get_Employee_Salary_11thMay

/* Stored Procedure Syntax */

CREATE PROCEDURE procedure_name
(
@ParameterName DataType,
@ParameterName2 DataType
)
AS
BEGIN

/* Here you can write SQL Statement */
END

/*Write a procedure which will accept a below parameter and insert a data into EmployeeDetails table?
a.	EmployeeID
b.	FirstName
c.	LastName
d.	DepartmentID
e.	Salary */


CREATE PROCEDURE usp_insert_EmployeeInfo_11thMay
(
@EmployeeID INT,
@FirstName VARCHAR (50),
@LastName VARCHAR (50),
@DepartmentID INT,
@Salary INT
)
AS
BEGIN

INSERT INTO EmployeeDetails(EmployeeID, FirstName, LastName, DepartmentID, Salary)
VALUES (@EmployeeID, @FirstName, @LastName, @DepartmentID, @Salary)

END
Select * From EmployeeDetails
UPDATE EmployeeDetails SET EmployeeID = 13 WHERE FirstName = 'Ram'
/* Calling stored procedure */

EXECUTE usp_insert_EmployeeInfo_11thMay 15, 'Temp1', 'Temp2', 5, 50000


CREATE PROCEDURE usp_Update_EmployeeDetails_Exercise
(
@EmployeeID INT,
@FirstName VARCHAR (50),
@LastName VARCHAR (50),
@DepartmentID INT,
@Salary INT
)
AS
BEGIN

UPDATE EmployeeDetails SET FirstName = @FirstName, LastName = @LastName, DepartmentID = @DepartmentID, Salary = @Salary
WHERE EmployeeID = @EmployeeID

END

EXECUTE usp_Update_EmployeeDetails_Exercise 14, 'Shiv', 'Shivoham', 1, 10000

/* Lets say user misses to pass DepartmentID, we need to display an error message "Please pass DepartmentID" */

CREATE PROCEDURE usp_Display_Message_11thMay
(
@EmployeeID INT,
@FirstName VARCHAR (50),
@LastName VARCHAR (50),
@DepartmentID INT,
@Salary INT
)
AS
BEGIN

IF (@DepartmentID is NOT NULL)
BEGIN

INSERT INTO EmployeeDetails(EmployeeID, FirstName, LastName, DepartmentID, Salary)
VALUES (@EmployeeID, @FirstName, @LastName, @DepartmentID, @Salary)

END
ELSE
BEGIN

SELECT 'Please pass DepartmentID.'
END

END


EXECUTE usp_Display_Message_11thMay 15, 'Namah', 'Shivaya', NULL, 10000

/* Check if the employee id is present, if it is present then update else create */

DROP PROCEDURE usp_Create_Update_EmployeeDetails
CREATE PROCEDURE usp_Create_Update_EmployeeDetails
(
@EmployeeID INT,
@FirstName VARCHAR (50),
@LastName VARCHAR (50),
@DepartmentID INT,
@Salary INT
)
AS
BEGIN

IF EXISTS (SELECT EmployeeID FROM EmployeeDetails WHERE EmployeeID = @EmployeeID)

BEGIN

UPDATE EmployeeDetails SET FirstName = @FirstName, LastName = @LastName, DepartmentID = @DepartmentID, Salary = @Salary
WHERE EmployeeID = @EmployeeID

END
ELSE
BEGIN

INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName, DepartmentID, Salary)
VALUES (@EmployeeID, @FirstName, @LastName, @DepartmentID, @Salary)

END
END
SELECT * FROM EmployeeDetails



EXECUTE usp_Create_Update_EmployeeDetails 15, 'Namah', 'Shivaya', 2, 100000
EXECUTE usp_Create_Update_EmployeeDetails 16, 'Murugan', 'Vinayagar', 2, 100000

BEGIN TRY
SELECT * FROM EmployeeDetails WHERE Salary = 'Karthik'
SELECT * FROM Department
END TRY

BEGIN CATCH
SELECT 'Something thing went wrong, Re-visit your code' 
END CATCH


CREATE PROCEDURE usp_Update_EmployeeDetails_EXCPHNDL
(
@EmployeeID INT,
@FirstName VARCHAR (50),
@LastName VARCHAR (50),
@DepartmentID INT,
@Salary INT
)
AS
BEGIN

BEGIN TRY

SELECT 1+'A'

UPDATE EmployeeDetails SET FirstName = @FirstName, LastName = @LastName, DepartmentID = @DepartmentID, Salary = @Salary
WHERE EmployeeID = @EmployeeID
END TRY
BEGIN CATCH
SELECT 'Something went wrong. Please check the code'

END CATCH

END

EXECUTE usp_Update_EmployeeDetails_EXCPHNDL 17, 'Shiva', 'Parvathi', 2, 100000

/*Write a procedure which will accept a below parameter
a.	EmployeeID
b.	FirstName
c.	LastName
d.	OperationType
I INSERT
U UPDATE
D DELETE */


CREATE PROCEDURE usp_Perform_Operation_11thMay
(
@EmployeeID INT,
@FirstName VARCHAR (50),
@LastName VARCHAR (50),
@OperationType VARCHAR (1)
)
AS
BEGIN
IF (@OperationType = 'I')
BEGIN

INSERT INTO EmployeeDetails (EmployeeID, FirstName, LastName)
VALUES (@EmployeeID, @FirstName, @LastName)
END


ELSE IF (@OperationType = 'U')
BEGIN

UPDATE EmployeeDetails SET FirstName = @FirstName, LastName = @LastName WHERE EmployeeID = @EmployeeID
END
ELSE
BEGIN
DELETE EmployeeDetails WHERE EmployeeID = @EmployeeID
END

END

EXECUTE usp_Perform_Operation_11thMay 17, 'Dummy', 'Piece', 'I'
EXECUTE usp_Perform_Operation_11thMay 17, 'Test', 'Test2', 'U'
EXECUTE usp_Perform_Operation_11thMay 17, NULL, NULL, 'D'
SELECT * FROM EmployeeDetails


/* Transaction  05/16/2025 */
DROP TABLE CustomerAccountDetails
CREATE TABLE CustomerAccountDetails
(
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR (50),
CurrentBalance INT
)

INSERT INTO CustomerAccountDetails
VALUES (1, 'Sahil Jaiswal', 600), (2, 'Ankit Gupta', 1700);

SELECT * FROM CustomerAccountDetails

/* Scenario1
Transfer $100 fund from customer ID 1 to Customer ID 2.
*/

UPDATE CustomerAccountDetails SET CurrentBalance = CurrentBalance - 100 WHERE CustomerID = 1
UPDATE CustomerAccountDetails SET CurrentBalance = CurrentBalance + 100 WHERE CustomerID = 2

/* Scenario1
Transfer $300 fund from customer ID 2 to Customer ID 1.
*/

UPDATE CustomerAccountDetails SET CurrentBalance = CurrentBalance - 300 WHERE CustomerID = 2
UPDATE CustomerAccountDetails SET CurrentBalance = CurrentBalance + 300 WHERE CustomerID = 1

SELECT * FROM CustomerAccountDetails

UPDATE CustomerAccountDetails SET CurrentBalance = CurrentBalance - 300 WHERE CustomerID = 2;
SELECT 1+'A';
UPDATE CustomerAccountDetails SET CurrentBalance = CurrentBalance + 300 WHERE CustomerID = 1;

SELECT * FROM CustomerAccountDetails
SELECT * FROM EmployeeDetails

BEGIN TRANSACTION
SELECT @@TRANCOUNT 

SELECT * FROM EmployeeDetails
DELETE FROM EmployeeDetails WHERE EmployeeID =12

COMMIT TRANSACTION

ROLLBACK TRANSACTION


BEGIN TRY
BEGIN TRANSACTION
UPDATE CustomerAccountDetails SET CurrentBalance = CurrentBalance - 300 WHERE CustomerID = 2;
SELECT 1+'A';
UPDATE CustomerAccountDetails SET CurrentBalance = CurrentBalance + 300 WHERE CustomerID = 1;
COMMIT TRANSACTION
END TRY

BEGIN CATCH
ROLLBACK TRANSACTION
SELECT 'Transaction incomplete, amount reversed - Check the error'
END CATCH

SELECT * FROM CustomerAccountDetails

/*Exercise
Write a Stored procedure which will accept a below parameter and transfer the fund from one account to another account.
a.	FromCustomerID
b.	ToCustomerID
c.	TransferAmount
Note: Before performing the transaction first we need to check amount which is mentioned for transfer is less than or equal to current balance
*/

CREATE PROCEDURE usp_TransferFund
(
@FromCustomerID INT,
@ToCustomerID INT,
@TransferAmount INT
)
AS
BEGIN
IF EXISTS (SELECT CurrentBalance FROM CustomerAccountDetails WHERE CustomerID = @FromCustomerID AND CurrentBalance >= @TransferAmount)
BEGIN
UPDATE CustomerAccountDetails SET CurrentBalance = CurrentBalance - @TransferAmount WHERE CustomerID = @FromCustomerID 
UPDATE CustomerAccountDetails SET CurrentBalance = CurrentBalance + @TransferAmount WHERE CustomerID = @ToCustomerID;
END
ELSE
BEGIN 
SELECT 'Current balance is low for the transaction'
END
END
EXECUTE usp_TransferFund 2, 1, 1600
EXECUTE usp_TransferFund 2, 1, 350
SELECT * FROM EmployeeDetails
/************************** SAVEPOINT **************************************/

SELECT * FROM CustomerAccountDetails

BEGIN TRANSACTION

INSERT INTO CustomerAccountDetails
VALUES (3, 'Sharil R', 1600), (4, 'Sanjay Patil', 1700), (5, 'Vishal Kumar', 1650);

SAVE TRANSACTION InsertFirstSet

INSERT INTO CustomerAccountDetails
VALUES (6, 'Prasanth Kumar', 1500), (7, 'Shyam Kumar', 1800), (8, 'Shubam Gupta', 1750);

ROLLBACK TRANSACTION InsertFirstSet

COMMIT TRANSACTION

/************************** SAVEPOINT **************************************/

CREATE TABLE SalesOrder
(
OrderID INT,
ProductName VARCHAR (50),
OrderYear INT,
OrderAmount INT
)

INSERT INTO SalesOrder VALUES 
(1, 'FAN', 2023, 4000), 
(2, 'Bulb', 2023, 7000), 
(3, 'Air Conditioner', 2023, 800), 
(4, 'Heater', 2023, 600),
(5, 'Light Fixture', 2023, 5000),
(6, 'Exhaust Fan', 2023, 600) ;
(7, 'FAN', 2024, 4100), 
(8, 'Bulb', 2024, 7300), 
(9, 'Air Conditioner', 2024, 900), 
(10, 'Heater', 2024, 650),
(11, 'Light Fixture', 2024, 5600),
(12, 'Exhaust Fan', 2024, 800);
(13, 'Car', 2025, 8000),
(14, 'Motorcycle', 2026, 10800);

SELECT * FROM SalesOrder

/************************************PIVOT**********************/
/*Third Step */
SELECT ProductName, [2023], [2024], [2025], [2026]
FROM
/* First Step */
(
SELECT 
ProductName, OrderYear, OrderAmount
FROM
SalesOrder
) AS P
/* Second Step */
PIVOT
(
SUM(OrderAmount) FOR OrderYear IN ([2023], [2024], [2025], [2026])
) AS P2 /* 2023 & 2024 are column on the result */


/* Dyanic SQL How to make the year dynamic*/



SELECT STRING_AGG(OrderYear, ',') /*Step 2*/
FROM
(
SELECT DISTINCT CONCAT('[',OrderYear,']') AS OrderYear FROM SalesOrder /*Step 1*/
) 
AS W


/*   STEP 3 */
DECLARE @OrderYear VARCHAR(100)

SELECT 
@OrderYear = STRING_AGG(OrderYear, ',') 
FROM
(
SELECT DISTINCT CONCAT('[',OrderYear,']') AS OrderYear FROM SalesOrder
) 
AS W

SELECT @OrderYear

/*   STEP 4 Copy the code */
/*Assign the Entire query as a string data to @SQLQuery*/



DECLARE @SQLQuery VARCHAR(MAX)

SET @SQLQuery = '
SELECT ProductName, '+@OrderYear+'
FROM
/* First Step */
(
SELECT 
ProductName, OrderYear, OrderAmount
FROM
SalesOrder
) AS P
/* Second Step */
PIVOT
(
SUM(OrderAmount) FOR OrderYear IN ('+@OrderYear+')
) AS P2'

PRINT (@SQLQuery)
/******* Step 5 **** COPY THE WHOLE thing step 3 and remove the SELECT @OrderYear */

DECLARE @OrderYear VARCHAR(100)

SELECT 
@OrderYear = STRING_AGG(OrderYear, ',') 
FROM
(
SELECT DISTINCT CONCAT('[',OrderYear,']') AS OrderYear FROM SalesOrder
) 
AS W

DECLARE @SQLQuery VARCHAR(MAX)

SET @SQLQuery = '
SELECT ProductName, '+@OrderYear+'
FROM
/* First Step */
(
SELECT 
ProductName, OrderYear, OrderAmount
FROM
SalesOrder
) AS P
/* Second Step */
PIVOT
(
SUM(OrderAmount) FOR OrderYear IN ('+@OrderYear+')
) AS P2'

PRINT (@SQLQuery)

/* How do we execute the value in the SQL Variable? Remove the PRINT (@SQLQuery replace with EXECUTE (@SQLQuery) <Copy Step 5> See Below*/

DECLARE @OrderYear VARCHAR(100)

SELECT 
@OrderYear = STRING_AGG(OrderYear, ',') 
FROM
(
SELECT DISTINCT CONCAT('[',OrderYear,']') AS OrderYear FROM SalesOrder
) 
AS W

DECLARE @SQLQuery VARCHAR(MAX)

SET @SQLQuery = '
SELECT ProductName, '+@OrderYear+'
FROM
/* First Step */
(
SELECT 
ProductName, OrderYear, OrderAmount
FROM
SalesOrder
) AS P
/* Second Step */
PIVOT
(
SUM(OrderAmount) FOR OrderYear IN ('+@OrderYear+')
) AS P2'
EXECUTE (@SQLQuery)

INSERT INTO SalesOrder VALUES 
(15, 'BiCycle', 2022, 14000);


/************************************UNPIVOT**********************/

CREATE TABLE StudentSubjectMark
(
StudentID INT,
English INT,
Math INT,
Science INT
)
DELETE FROM StudentSubjectMark
INSERT INTO StudentSubjectMark SELECT 1, 55, 98, 95
INSERT INTO StudentSubjectMark SELECT 2, 75, 67, 76
INSERT INTO StudentSubjectMark SELECT 3, 87, 74, 36

SELECT * FROM StudentSubjectMark

/* Below is how the transformed result should look like
StudentID	SubjectName		Marks
1			English			55
1			Math			98
1			Science			95
2			English			75
2			Math			67
2			Science			76
3			English			87
3			Math			74
3			Science			6
*/

/*........Again we follow the same three steps process like we did in PIVOT.....*/


/*....Step 1....*/

(
SELECT
StudentID, English, Math, Science
FROM
StudentSubjectMark
) AS W

/*....Step 2....*/
UNPIVOT
(
Marks FOR SubjectName IN ([English], [Math], [Science]) 
) AS P1
/* English, Math, and Science will be transformed into subject name. In Addition Each subject has its own value */
/* Marks have values from  English, Math, and Science in Column */


/*....Step 3....*/
SELECT 
StudentID, SubjectName, Marks
FROM
(
SELECT
StudentID, English, Math, Science
FROM
StudentSubjectMark
) AS W
UNPIVOT
(
Marks FOR SubjectName IN ([English], [Math], [Science])
) AS P1


/************************************VIEW***********************************************************/
DROP VIEW VW_EmployeeDetails
CREATE VIEW V_EmployeeDetails
AS
SELECT
EmployeeID,
FirstName,
LastName,
DepartmentID
FROM
EmployeeDetails

SELECT * FROM VW_EmployeeDetails

CREATE VIEW V_Department
AS SELECT
DepartmentID,
DepartmentName
FROM
Department


/******* JOIN View*****/
SELECT * FROM V_EmployeeDetails AS VED
INNER JOIN
Department AS D ON VED.DepartmentID=D.DepartmentID
SELECT * FROM CLIENT
CREATE TABLE Client
(
ClientID INT,
ClientName VARCHAR (50)
)

INSERT INTO Client VALUES (1, 'Arwen Liv Tyler'), (2, 'Gandalf Ian McKellen'), (3, 'Galadriel Cate Blanchett'), (4, 'Legolas Orlando Bloom'), 
(5, 'Frodo Baggins E Wood'), (6, 'Aragon Viggo Mortensen'), (7, 'Samwise Gamgee A Astin'), (8, 'Elrond Hugo Weaving')

CREATE VIEW V_EmployeeFullDetails
AS
SELECT
EmployeeID,
FirstName,
LastName,
D.DepartmentID,
D.DepartmentName,
CL.ClientID
FROM EmployeeDetails AS ED
INNER JOIN Department AS D ON ED.DepartmentID = D.DepartmentID
INNER JOIN Client AS CL ON CL.ClientID = ED.ClientID

SELECT * FROM V_EmployeeFullDetails

ALTER VIEW V_EmployeeFullDetails
AS
SELECT
EmployeeID,
FirstName,
LastName,
D.DepartmentID,
D.DepartmentName,
CL.ClientID,
CL.ClientName
FROM EmployeeDetails AS ED
INNER JOIN Department AS D ON ED.DepartmentID = D.DepartmentID
INNER JOIN Client AS CL ON CL.ClientID = ED.ClientID

DROP VIEW V_EmployeeFullDetails


/************************************SUBQUERY***********************************************************/

/***********************Exercise: Write a query to show which employee is getting maximum salary***********/

SELECT MAX(Salary) From EmployeeDetails
SELECT * FROM EmployeeDetails WHERE Salary = 100000

SELECT * FROM EmployeeDetails WHERE Salary = (SELECT MAX(Salary) From EmployeeDetails)


/************************************Correlated SUBQUERY***********************************************************/
/**************Exercise: Write a query to display which employee gets highest salary department wise **************/

SELECT * 
FROM 
EmployeeDetails AS OQ 
WHERE Salary = (SELECT MAX(Salary) From EmployeeDetails AS IQ WHERE IQ.DepartmentID = OQ.DepartmentID)

/************************************MERGE Statement***********************************************************/

CREATE TABLE SourceProduct
(
ProductID INT,
ProductName VARCHAR (50),
Price INT
)
DELETE FROM SourceProduct
INSERT INTO SourceProduct (ProductID, ProductName, Price) VALUES (1, 'Table', 100)
INSERT INTO SourceProduct (ProductID, ProductName, Price) VALUES (2, 'Desk', 150)
INSERT INTO SourceProduct (ProductID, ProductName, Price) VALUES (3, 'Chair', 120)
INSERT INTO SourceProduct (ProductID, ProductName, Price) VALUES (4, 'Computer', 500)

CREATE TABLE TargetProduct
(
ProductID INT,
ProductName VARCHAR (50),
Price INT
)

INSERT INTO TargetProduct (ProductID, ProductName, Price) VALUES (1, 'Table', 100)
INSERT INTO TargetProduct (ProductID, ProductName, Price) VALUES (2, 'Desk', 190)
INSERT INTO TargetProduct (ProductID, ProductName, Price) VALUES (5, 'Toys', 90)
INSERT INTO TargetProduct (ProductID, ProductName, Price) VALUES (6, 'Pen', 20)

SELECT * FROM SourceProduct
SELECT * FROM TargetProduct

MERGE TargetProduct AS TARGET /* here we define Target table */
USING SourceProduct AS SOURCE /* Here we define Source table */
ON Target.ProductID = SOURCE.ProductID /* We are comparing SOURCE and TARGET based on the ProductID column */
WHEN NOT MATCHED BY TARGET /* ****When ProdutID present in SOURCE table and not in TARGET table ******/
THEN INSERT (ProductID, ProductName, Price) VALUES (SOURCE.ProductID, SOURCE.ProductName, SOURCE.Price)
WHEN MATCHED THEN UPDATE SET TARGET.Price = Source.Price
WHEN NOT MATCHED BY SOURCE /*****When ProdutID present in TARGET table and not in SOURCE table ******/
THEN DELETE;

/************************************Temporary Table***********************************************************/

CREATE TABLE #EmployeeData
(
EmployeeID INT,
FirstName VARCHAR (50),
LastName VARCHAR (50)
)



/*Exercise:
Write a Store Procedure which will accept a departmentID as parameter and now we have to return those employees who is getting more salary as compare to avg salary.
*/

CREATE PROCEDURE usp_Employee_above_avg_salary
(
@epartmentID INT
)
AS
BEGIN
/* First extract how many employees are working */
CREATE TABLE Employee_Department_Data_17thMay
(
EmployeeID INT,
FirstName VARCHAR (50),
LastName VARCHAR (50),
Salary INT,
DepartmentID INT
)

INSERT INTO Employee_Department_Data_17thMay (EmployeeID, FirstName, LastName, Salary, DepartmentID)
SELECT EmployeeID, FirstName, LastName, Salary, DepartmentID 
FROM
EmployeeDetails WHERE DepartmentID = @epartmentID
/* Calculate Average Salary */
CREATE TABLE Department_Avg_Salary
(
DepartmentID INT,
AverageSalary INT
)
INSERT INTO Department_Avg_Salary (DepartmentID, AverageSalary)
SELECT
DepartmentID, AVG(Salary)
FROM
Employee_Department_Data_17thMay
GROUP BY DepartmentID

/* Calculate Which Employee is earning Average Salary */
SELECT
ED.EmployeeID, ED.FirstName, ED.LastName, ED.Salary, DA.AverageSalary
FROM
Employee_Department_Data_17thMay AS ED
INNER JOIN Department_Avg_Salary AS DA ON ED.DepartmentID = DA.DepartmentID
WHERE ED.Salary > DA.AverageSalary
END

EXECUTE usp_Employee_above_avg_salary 1

EXECUTE usp_Employee_above_avg_salary 2

/*************** Same Store procedure and tables inside is Temporary table *******************/

CREATE PROCEDURE usp_Employee_above_avg_salary_Temp_Tbl
(
@epartmentID INT
)
AS
BEGIN
/* First extract how many employees are working */
CREATE TABLE #Employee_Department_Data_17thMay
(
EmployeeID INT,
FirstName VARCHAR (50),
LastName VARCHAR (50),
Salary INT,
DepartmentID INT
)

INSERT INTO #Employee_Department_Data_17thMay (EmployeeID, FirstName, LastName, Salary, DepartmentID)
SELECT EmployeeID, FirstName, LastName, Salary, DepartmentID 
FROM
EmployeeDetails WHERE DepartmentID = @epartmentID
/* Calculate Average Salary */
CREATE TABLE #Department_Avg_Salary
(
DepartmentID INT,
AverageSalary INT
)
INSERT INTO #Department_Avg_Salary (DepartmentID, AverageSalary)
SELECT
DepartmentID, AVG(Salary)
FROM
#Employee_Department_Data_17thMay
GROUP BY DepartmentID

/* Calculate Which Employee is earning Average Salary */
SELECT
ED.EmployeeID, ED.FirstName, ED.LastName, ED.Salary, DA.AverageSalary
FROM
#Employee_Department_Data_17thMay AS ED
INNER JOIN #Department_Avg_Salary AS DA ON ED.DepartmentID = DA.DepartmentID
WHERE ED.Salary > DA.AverageSalary
END


EXECUTE usp_Employee_above_avg_salary_Temp_Tbl 1

EXECUTE usp_Employee_above_avg_salary_Temp_Tbl 2


/*************** CTE Common Table Expression *******************/

;WITH Employee_cte
AS
(
SELECT * FROM EmployeeDetails WHERE DepartmentID =1
)
SELECT * FROM Employee_cte



SELECT * FROM Employee_cte


CREATE PROCEDURE usp_Employee_above_avg_salary_CTE
(
@DepartmentID INT
)
AS
BEGIN


;WITH Employee_Data
AS
(
SELECT EmployeeID, FirstName, LastName, Salary, DepartmentID 
FROM
EmployeeDetails WHERE DepartmentID = @DepartmentID
),

CTE_Department_Avg_Salary
AS
(
SELECT
DepartmentID, AVG(Salary) AS AverageSalary
FROM
Employee_Data
GROUP BY DepartmentID
)
 
SELECT
ED.EmployeeID, ED.FirstName, ED.LastName, ED.Salary, DA.AverageSalary
FROM
Employee_Data AS ED
INNER JOIN CTE_Department_Avg_Salary AS DA ON ED.DepartmentID = DA.DepartmentID
WHERE ED.Salary > DA.AverageSalary
END


EXECUTE usp_Employee_above_avg_salary_CTE 1

/*************** ****** INDEX ****** *******************/

SELECT * FROM EmployeeDepartmentData WHERE EmployeeID = 5

SELECT * FROM EmployeeDetails WHERE EmployeeID = 5

CREATE NONCLUSTERED INDEX IX_Index_EmployeeName ON EmployeeDetails (FirstName)

SELECT * FROM EmployeeDetails WHERE FirstName = 'Shyam'
SELECT * FROM EmployeeDetails WHERE EmployeeID = 5

DROP INDEX IX_Index_EmployeeName ON EmployeeDetails

DROP INDEX IX_Index_BothNames ON EmployeeDetails

CREATE NONCLUSTERED INDEX IX_Index_FirstName ON EmployeeDepartmentData (FirstName)

SELECT * FROM EmployeeDepartmentData WHERE FirstName = 'Shyam'

DROP INDEX IX_Index_FirstName ON EmployeeDepartmentData


CREATE NONCLUSTERED INDEX IX_Index_BothNames ON EmployeeDetails (FirstName, LastName)

SELECT * FROM EmployeeDetails WHERE FirstName = 'Shyam'


/*************** ****** TRIGGER ****** *******************/
DROP TABLE EmployeeInfo_18thMay; 
DROP TABLE EmployeeAudit_18thMay

CREATE TABLE EmployeeInfo_18thMay
(
EmployeeID INT,
FirstName VARCHAR (50),
LastName VARCHAR (50)
)

CREATE TABLE EmployeeAudit_18thMay
(
EmployeeCount INT
)
INSERT INTO EmployeeAudit_18thMay VALUES (0)

/* a).  DML Trigger Template **/
CREATE TRIGGER TriggerName ON TableName
AFTER DML Operation
AS
BEGIN

END


DELETE TRIGGER TR_IncreaseCount ON EmployeeInfo_18thMay

CREATE TRIGGER TR_IncreaseCount ON EmployeeInfo_18thMay
AFTER INSERT
AS
BEGIN

UPDATE EmployeeAudit_18thMay SET EmployeeCount = EmployeeCount + 1

END

SELECT * FROM EmployeeInfo_18thMay
SELECT * FROM EmployeeAudit_18thMay

INSERT INTO EmployeeInfo_18thMay (EmployeeID, FirstName, LastName) VALUES (1, 'Bayern', 'Munchen')
INSERT INTO EmployeeInfo_18thMay (EmployeeID, FirstName, LastName) VALUES (2, 'Liverpool', 'Club')
INSERT INTO EmployeeInfo_18thMay (EmployeeID, FirstName, LastName) VALUES (3, 'Borussia', 'Dortmund')
INSERT INTO EmployeeInfo_18thMay (EmployeeID, FirstName, LastName) VALUES (4, 'Bayer', 'Leverkuesen')

DELETE FROM EmployeeInfo_18thMay WHERE EmployeeID = 6
DELETE FROM EmployeeAudit_18thMay
INSERT INTO EmployeeInfo_18thMay (EmployeeID, FirstName, LastName) VALUES (5, 'Bayer', 'Leverkuesen'), (6, 'Borussia', 'Mönchengladbach')

SELECT * FROM inserted


ALTER TRIGGER TR_IncreaseCount ON EmployeeInfo_18thMay
AFTER INSERT
AS
BEGIN

UPDATE EmployeeAudit_18thMay SET EmployeeCount = EmployeeCount + (SELECT COUNT (*) FROM INSERTED)

END

INSERT INTO EmployeeInfo_18thMay (EmployeeID, FirstName, LastName) VALUES (5, 'Bayer', 'Leverkuesen'), (6, 'Borussia', 'Mönchengladbach')
INSERT INTO EmployeeInfo_18thMay (EmployeeID, FirstName, LastName) VALUES (7, 'FC', 'Frankfurt')

SELECT * FROM EmployeeInfo_18thMay
SELECT * FROM EmployeeAudit_18thMay

/* a). Write a trigger to display message when updating data in EmployeeInfo_18thMay Table “Table has been updated” */

CREATE TRIGGER TR_DisplayMsg ON EmployeeInfo_18thMay
AFTER UPDATE
AS
BEGIN

SELECT (' Table has been updated ')

END

UPDATE EmployeeInfo_18thMay SET FirstName = 'Eintracht' WHERE EmployeeID = 7


/* b. write a trigger to decrease the employee count we record is deleted in EmployeeInfo_18thMay */
DROP TRIGGER IF EXISTS TR_Delete
CREATE TRIGGER TR_Delete ON EmployeeInfo_18thMay
AFTER DELETE
AS
BEGIN

UPDATE EmployeeAudit_18thMay SET EmployeeCount = EmployeeCount - (SELECT COUNT (*) FROM DELETED)

END

UPDATE EmployeeAudit_18thMay SET EmployeeCount = 6
DELETE FROM EmployeeInfo_18thMay WHERE EmployeeID = 7

SELECT * FROM EmployeeInfo_18thMay
SELECT * FROM EmployeeAudit_18thMay

/******DDL Trigger ****************/

DROP TRIGGER TR_Create_Table_MSG

CREATE TRIGGER TR_Create_Table_MSG ON DATABASE
AFTER CREATE_TABLE
AS
BEGIN

SELECT ('Table has been created ')
END

DROP TABLE Test_Trigger_Create
CREATE TABLE Test_Trigger_Create
(
ID INT
)

/* Exercise,
Write a trigger to display a message when user is performing ALTER statement.
*/

DROP TRIGGER  TR_ALTER_Table_MSG DATABASE


CREATE TRIGGER TR_ALTER_Table_MSG ON DATABASE
AFTER ALTER_TABLE
AS
BEGIN

SELECT ('Table has been Altered ')
END

SELECT * FROM Test_Trigger_Create

ALTER TABLE Test_Trigger_Create
DROP COLUMN EmployeeID 

/*..Remove DDL Trigger....*/
DROP TRIGGER TR_ALTER_Table_MSG ON DATABASE

/********************* ROLLUP and CUBE ***********************/
CREATE TABLE Sales 
(
Continent VARCHAR (50),
Country VARCHAR (50),
City VARCHAR (50),
SaleAmount INT
)

INSERT INTO Sales VALUES 
('Asia' , 'India', 'Delhi', 10000),
('Asia' , 'India', 'Delhi', 15000),
('Asia' , 'Japan', 'Hiroshima', 5000),
('Asia' , 'Japan', 'Tokyo', 4000),
('Europe' , 'France', 'Cannes', 5000),
('Europe' , 'France', 'Paris', 4000),
('Europe' , 'United Kingdom', 'London', 1000),
('Europe' , 'United Kingdom', 'Manchester', 3000),
('Asia' , 'India', 'Noida', 10000);

SELECT * FROM Sales

SELECT Continent, Country, City, SUM(SaleAmount)
FROM
Sales
GROUP BY Continent, Country, City

SELECT * FROM Sales

SELECT Continent, Country, City, SUM(SaleAmount)
FROM
Sales
GROUP BY ROLLUP (Continent, Country, City);

SELECT Continent, Country, City, SUM(SaleAmount)
FROM
Sales
GROUP BY CUBE (Continent, Country, City);

SELECT CONVERT(VARCHAR (20), GETDATE (), 105)
SELECT CONVERT(VARCHAR (20), GETDATE (), 106)
SELECT CONVERT(VARCHAR (20), GETDATE (), 104)

SELECT Salary, ISNULL (Salary, 0) FROM EmployeeDetails

SELECT GETDATE ()

SELECT CAST(GETDATE () AS DATE)

SELECT CAST( 1 AS VARCHAR(2)) + 'A'

Select Salary,
IIF (Salary > 50000, 'Good Salary', 'Average Salary') AS SalaryDescription
FROM EmployeeDetails


SELECT STUFF('Sahil', 1, 3, 'W')

SELECT DAY(GETDATE()), MONTH(GETDATE()), YEAR(GETDATE())


CREATE TABLE Orders_Class_work
(
Order_id INT,
OrderDate DATE,
Amount INT,
Customer_Id INT
)

INSERT INTO Orders_Class_work (Order_id, OrderDate, Amount, Customer_Id) VALUES
(1, '2025-05-01', 50000, 1),
(2, '2025-06-22', 51000, 2),
(3, '2025-08-14', 65000, 3),
(4, '2025-11-19', 75000, 4),
(5, '2025-03-23', 99000, 5);

tRUNCATE table Orders

/********************* Case Study 1  *****************/


/****** Question 1 **************
 1. Display the number of states present in theLocationTable ***/
SELECT DISTINCT State
FROM Location
ORDER BY State
/* Answer 20 */


/****** Question 2 ************
 2. Howmany products are of regular type?*****/
SELECT COUNT(*) FROM Product WHERE Type = 'Regular'
/* Answer 8 */

/****** Question 3************
3. Howmuch spending has been done on marketing of product ID1?*****/
SELECT SUM(Marketing) AS Marketing_Expense FROM Fact WHERE ProductId = 1
/* Answer 4658 */

/****** Question 4***********
 4. What is the minimum sales of a product?******/
 SELECT * FROM Fact
 SELECT MIN(Sales) AS MinimumSales FROM Fact
 /* Answer 17 */

 /****** Question 5***********
  5. Display the max Cost of Good Sold (COGS).******/

 SELECT MAX(COGS) AS Max_COGS FROM Fact
  /* Answer 364 */


/****** Question 6***********
 6. Display the details of the product where product type is coffee..******/
   SELECT * FROM Product WHERE Product_Type = 'Coffee'

/****** Question 7***********
 7. Display the details where total expenses are greater than40 ******/
SELECT * FROM Fact WHERE Total_Expenses > 40 

/****** Question 8***********
 8. What is the average sales in area code 719? ******/
 SELECT AVG(Sales) From Fact WHERE Area_Code = 719
  /* Answer 186 */

/****** Question 9***********
9. Find out the total profit generated by Colorado state. ******/
SELECT SUM(Profit), State FROM Fact JOIN Location ON Fact.Area_Code = Location.Area_Code WHERE State = 'Colorado' GROUP BY State
  /* Answer 17743 */

/****** Question 10***********
10. Display the average inventory for each product ID. ******/

SELECT AVG(Inventory), Productid FROM Fact GROUP BY ProductiD ORDER BY Productid

/****** Question 11***********
11. Display state in a sequential order in a LocationTable.. ******/
SELECT State FROM Location ORDER BY State ASC


/****** Question 12***********
12. Display the average budget of the Product where the average budget
 margin should be greater than 100. ******/

 SELECT AVG(Budget_Margin, ProductiD FROM Fact GROUP BY ProductiD HAVING AVG(Budget_Margin) > 100

 /****** Question 13***********
13. What is the total sales done on date 2010-01-01?. ******/
SELECT SUM(Sales) FROM Fact WHERE Date = '2010-01-01'

 /****** Question 14***********
14. Display the average total expense of each product ID on anindividual date. ******/

SELECT AVG(Total_Expenses), ProductID, Date FROM Fact GROUP BY ProductID, Date

 /****** Question 15***********
15.  Display the table with the following attributes such as date, productID,
 product_type, product, sales, profit, state, area_code. ******/

 SELECT * FROM Fact
 SELECT * FROM Location
 SELECT * FROM Product


 SELECT F.Date, F.ProductID, P.Product_Type, P.Product, F.Sales, F.Profit, L.State, F.Area_Code FROM Fact AS F
 INNER JOIN Product AS P ON F.ProductID = P.ProductID
 INNER JOIN Location AS L ON F.Area_Code = L.Area_Code


/****** Question 16***********
16.  Display the rank without any gap to show the sales wiserank.. ******/
SELECT DENSE_RANK() OVER (Order by Sales DESC), Sales FROM Fact


/****** Question 17***********
17. Find the state wise profit and sales. ******/
SELECT State, Sum(Profit), SUM(Sales) FROM Fact 
JOIN Location ON Fact.Area_Code = Location.Area_Code GROUP BY State

/********* Question 18 ************
18. Find the state wise profit and sales along with the productname.*********/

SELECT State, Sum(Profit) AS State_Wise_Profit, SUM(Sales) AS Total_Sale, Product FROM Fact 
JOIN Product ON Fact.ProductID = Product.ProductID 
JOIN Location ON Fact.Area_Code = Location.Area_Code 
GROUP BY State, Product

/********** Question 19*********
19. If there is an increase in sales of 5%, calculate the increasedsales **********/
SELECT Sales, Sales*0.05 AS INCREMENT, Sales+(Sales*0.05) AS Updated_Sale_Amount FROM Fact 


/********* Question 20****************
20. Find the maximum profit along with the product ID and producttype.*/
SELECT * FROM Fact
SELECT * FROM Product

SELECT F.ProductID, P.Product_type, MAX(Profit) FROM FACT AS F
JOIN Product AS P ON F.ProductID = P.ProductID
GROUP BY F.ProductID, P.Product_Type


/********* Question 21****************
21. Create a stored procedure to fetch the result according to theproduct type
    from ProductTable..*/

CREATE PROCEDURE Sample_ProductType
@Fetch_Product_Type VARCHAR (20)
AS
SELECT * FROM Product WHERE Product_Type = @Fetch_Product_Type

EXECUTE Sample_ProductType 'Coffee'
EXECUTE Sample_ProductType 'Milk'



/********* Question 22****************
22. Write a query by creating a condition in which if the total expenses isless than
    60 then it is a profit or else loss..*********/
SELECT Total_Expenses, IIF (Total_Expenses < 40, 'Profit', 'Loss')  FROM Fact




/********* Question 23****************
23. Give the total weekly sales value with the date and product IDdetails. Use
 roll-up to pull the data in hierarchical order. *******/




/********* Question 24****************
24. Apply union and intersection operator on the tables which consistof
    attribute area code. *******/




/********* Question 25****************
25. Create a user-defined function for the product table to fetch aparticular
 product type based upon the user’s preference.. *******/



/********* Question 26****************
26. Change the product type from coffee to tea where product ID is 1and undo
    it... *******/




/********* Question 27****************
27. Display the date, product ID and sales where total expensesare
    between 100 to 200.. *******/




/********* Question 28****************
28. Delete the records in the Product Table for regulartype.. *******/




/********* Question 29 ****************
/29. Display the ASCII value of the fifth character from the columnProduct.******/ 




/************************************************************** Case Study 2 ****************************************************/
