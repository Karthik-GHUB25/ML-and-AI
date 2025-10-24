CREATE DATABASE CASE_STUDY


CREATE TABLE Location
(LocationID INT Primary Key,
City VARCHAR (50)
)

INSERT INTO Location VALUES (122, 'New York');
INSERT INTO Location VALUES (123, 'Dallas');
INSERT INTO Location VALUES (124, 'Chicago');
INSERT INTO Location VALUES (167, 'Boston');

CREATE TABLE Department
(
DepartmentID INT Primary Key,
Name VARCHAR (50),
LocationID INT
)

INSERT INTO Department VALUES (10, 'Accounting', 122)
INSERT INTO Department VALUES (20, 'Sales', 124)
INSERT INTO Department VALUES (30, 'Research', 123)
INSERT INTO Department VALUES (40, 'Operations', 167)

CREATE TABLE Job
(
JobID INT Primary Key,
Designation VARCHAR (50)
)

INSERT INTO Job VALUES (667, 'Clerk')
INSERT INTO Job VALUES (668, 'Staff')
INSERT INTO Job VALUES (669, 'Analyst')
INSERT INTO Job VALUES (670, 'Sales Person')
INSERT INTO Job VALUES (671, 'Manager')
INSERT INTO Job VALUES (672, 'President')

CREATE TABLE Employee
(
EmployeeID INT Primary Key,
Last_Name VARCHAR (50),
First_Name VARCHAR (50),
Middle_Name VARCHAR (50),
JobID INT,
HireDate DATE,
Salary INT,
Comm INT NULL,
DepartmentID INT
)


INSERT INTO Employee VALUES (7369, 'Smith', 'John', 'Q', 667, '17-DEC-84', 800, NULL, 20)

INSERT INTO Employee VALUES (7499, 'Allen', 'Kevin', 'J', 670, '20-FEB-85', 1600, 300, 30)
INSERT INTO Employee VALUES (755, 'Doyle', 'Jean', 'K', 671, '04-APR-85', 2850, NULL, 30)
INSERT INTO Employee VALUES (756, 'Dennis', 'Lynn', 'S', 671, '15-MAY-85', 2750, NULL, 30)
INSERT INTO Employee VALUES (757, 'Baker', 'Leslie', 'D', 671, '10-Jun-85', 2200, NULL, 40)
INSERT INTO Employee VALUES (7521, 'Wark', 'Cynthia', 'D', 670, '22-Feb-85', 1250, 50, 30)
/*1 List all the employee details. */
SELECT  * FROM Employee

/*2 List all the department details. */
SELECT * FROM Department

/*3 List all job details. */
SELECT * FROM Job

/*4 List all the locations. */
SELECT * FROM Location

/*5 List out the First Name, Last Name, Salary, Commission for all Employees. */
SELECT First_Name, Last_Name, Salary, Comm from Employee

/*6 List out the Employee ID, Last Name, Department ID for all employees and alias 
Employee ID as "ID of the Employee", Last Name as "Name of the Employee", Department ID as "Dep_id".  */

SELECT EmployeeID as "ID of the Employee", Last_Name as Name_of_the_Employee, DepartmentID AS Dep_id FROM Employee

/*7 List out the annual salary of the employees with their names only.  */
SELECT Salary*12 as annual_salary, first_Name FROM Employee
SELECT Salary*12 as annual_salary, CONCAT(First_Name, ' ', Last_Name) AS Full_Name FROM Employee


/*******************************************************************************************************************/
/*******************************************************************************************************************/
/*                                             WHERE Condition:                                                    */
/*******************************************************************************************************************/
/*******************************************************************************************************************/
/*1 List the details about "Smith". */
SELECT * FROM Employee WHERE Last_Name = 'Smith'

/* 2 List out the employees who are working in department 20. */
SELECT * FROM Employee WHERE DepartmentID = 20

/*3 List out the employees who are earning salary between 2000 and 3000.*/
SELECT * FROM Employee WHERE Salary BETWEEN 2000 AND 3000

/*4 List out the employees who are working in department 10 or 20. */
SELECT * FROM Employee WHERE DepartmentID IN (10, 20)

/*5 Find out the employees who are not working in department 10 or 30. */
SELECT * FROM Employee WHERE DepartmentID NOT IN (10, 30)

/*6 ist out the employees whose name starts with 'L'. */
SELECT * FROM Employee WHERE First_Name LIKE 'L%'

/*7 List out the employees whose name starts with 'L' and ends with 'E'. */
SELECT * FROM Employee WHERE First_Name LIKE 'L%' AND First_Name LIKE '%e'

/*8 List out the employees whose name length is 4 and start with 'J'. */
SELECT * FROM Employee WHERE First_Name LIKE 'J___%'

/*9 List out the employees who are working in department 30 and draw the salaries more than 2500. */
SELECT * FROM Employee WHERE DepartmentID = 30 AND Salary > 2500

/*10 List out the employees who are not receiving commission. */
SELECT * FROM Employee WHERE Comm IS NULL

/*******************************************************************************************************************/
/*******************************************************************************************************************/
/*                                             ORDER BY CLAUSE                                                     */
/*******************************************************************************************************************/
/*******************************************************************************************************************/
/*1 List out the Employee ID and Last Name in ascending order based on the Employee ID. */
SELECT EmployeeID, Last_Name FROM Employee ORDER BY EmployeeID ASC

/* 2. List out the Employee ID and Name in descending order based on salary. */
SELECT EmployeeID, First_Name, Salary FROM Employee ORDER BY Salary DESC

/* 3. List out the employee details according to their Last Name in ascending-order. */
SELECT * FROM Employee ORDER BY Last_Name ASC

/* 4. List out the employee details according to their Last Name in ascending order and then Department ID in descending order.*/
SELECT * FROM Employee ORDER BY Last_Name ASC
SELECT * FROM Employee ORDER BY DepartmentID DESC

/*******************************************************************************************************************/
/*******************************************************************************************************************/
/*                                             GROUP BY and HAVING CLAUSE                                          */
/*******************************************************************************************************************/
/*******************************************************************************************************************/
/*1. List out the department wise maximum salary, minimum salary and average salary of the employees. */
SELECT MAX(Salary), MIN(Salary), AVG(Salary), DepartmentID FROM Employee GROUP BY DepartmentID

/*2. List out the job wise maximum salary, minimum salary and average salary of the employees. */
SELECT MAX(Salary), MIN(Salary), AVG(Salary), JobID FROM Employee GROUP BY JobID


/*3. List out the number of employees who joined each month in ascending order. */
SELECT COUNT(*) AS #_Of_Employee_Joined, MONTH(HireDate) AS Month_Hired FROM Employee GROUP BY MONTH(HireDate) ORDER BY MONTH(HireDate) ASC
SELECT COUNT(*) AS #_Of_Employee_Joined, DATENAME(MONTH, HireDate) AS Month_Hired FROM Employee GROUP BY DATENAME(MONTH, HireDate) ORDER BY DATENAME(MONTH, HireDate)


/*4. List out the number of employees for each month and year in ascending order based on the year and month. */
SELECT COUNT(*), MONTH(HireDate), YEAR(HireDate) FROM Employee GROUP BY MONTH(HireDate), YEAR(HireDate) ORDER BY YEAR(HireDate)

/*5. List out the Department ID having at least four employees. */
SELECT DepartmentID FROM Employee GROUP BY DepartmentID HAVING COUNT(*) >=4

/*6. How many employees joined in February month. */
SELECT COUNT(*) FROM Employee WHERE MONTH(HireDate) = 2

/*7. How many employees joined in May or June month. */
SELECT COUNT(*) FROM Employee WHERE MONTH(HireDate) = 5 OR MONTH(HireDate) = 6
/* or */
SELECT COUNT(*) FROM Employee WHERE MONTH(HireDate) in (5, 6) 
/*8. How many employees joined in 1985? */
SELECT COUNT(*) FROM Employee WHERE YEAR(HireDate) = 1985

/*9. How many employees joined each month in 1985? */
SELECT COUNT(*) FROM Employee WHERE YEAR(HireDate) = 1985 GROUP BY MONTH(HireDate)

/*10. How many employees were joined in April 1985? */
SELECT COUNT(*) FROM Employee WHERE YEAR(HireDate) = 1985 AND MONTH(HireDate) = 4

/*11. Which is the Department ID having greater than or equal to 3 employees joining in April 1985? */
SELECT DepartmentID FROM Employee WHERE YEAR(HireDate) = 1985 AND MONTH(HireDate) = 4 GROUP BY DepartmentID HAVING COUNT(*) >=3


/*******************************************************************************************************************/
/*******************************************************************************************************************/
/*                                                        JOINS                                                    */
/*******************************************************************************************************************/
/*******************************************************************************************************************/
/* 1. List out employees with their department names. */
SELECT Employee.*, Name FROM Employee 
JOIN Department ON Employee.DepartmentID = Department.DepartmentID

/* 2. Display employees with their designations.  */
SELECT Employee.*, Designation FROM Employee 
JOIN JOB ON Employee.JobID = Job.JobID

/* 3. Display the employees with their department names and city.  */
SELECT Employee.*, Name, City FROM Employee
JOIN Department ON Employee.DepartmentID = Department.DepartmentID
JOIN Location ON Department.LocationID = Location.LocationID


/* 4. How many employees are working in different departments? Display with department names.  */
SELECT COUNT(*) AS #_Of_Employee, Name FROM Employee
JOIN Department ON Employee.DepartmentID = Department.DepartmentID
GROUP BY Name

/* 5. How many employees are working in the sales department?  */
SELECT COUNT(*) AS #_Of_Employee, Name FROM Employee
JOIN Department ON Employee.DepartmentID = Department.DepartmentID
WHERE Department.Name = 'Sales' GROUP BY Name

/* 6. Which is the department having greater than or equal to 3 employees and display the department names in ascending order.  */
SELECT COUNT(*), Department.DepartmentID, Name FROM Employee
JOIN Department ON Employee.DepartmentID = Department.DepartmentID
GROUP BY Name, Department.DepartmentID HAVING COUNT(*) >= 3


/* 7. How many employees are working in 'Dallas'?  */
SELECT COUNT(*) AS #_Of_Employee FROM Employee
JOIN Department ON Employee.DepartmentID = Department.DepartmentID
JOIN Location ON Department.LocationID = Location.LocationID
WHERE Location.City = 'Dallas' 


/* 8. Display all employees in sales or operation departments. */
SELECT COUNT(*) AS #_Of_Employee, Name AS DepartmentName FROM Employee
JOIN Department ON Employee.DepartmentID = Department.DepartmentID
WHERE Department.Name IN ('Sales', 'Operations') GROUP BY Name

/* All details of Employee */
SELECT Employee.*, Name FROM Employee
JOIN Department ON Employee.DepartmentID = Department.DepartmentID
WHERE Department.Name IN ('Sales', 'Operations')

SELECT * FROM Department
SELECT * FROM Employee
/*******************************************************************************************************************/
/*******************************************************************************************************************/
/*                                                 CONDTIONAL STATEMENT                                            */
/*******************************************************************************************************************/
/*******************************************************************************************************************/
/* 1. Display the employee details with salary grades. Use conditional statement to create a grade column. */
SELECT *,
	CASE
		WHEN Salary >= 2500 THEN 'Grade A'
		WHEN Salary >= 2000 THEN 'Grade B'
		WHEN Salary >= 1500 THEN 'Grade C'
		ELSE 'Grade D'
	END AS Salary_Grade, COUNT(*) AS Total_Employee
From Employee
GROUP BY


/* 2. List out the number of employees grade wise. Use conditional statement to create a grade column. */
SELECT 
	CASE
		WHEN Salary >= 2500 THEN 'Grade A'
		WHEN Salary >= 2000 THEN 'Grade B'
		WHEN Salary >= 1500 THEN 'Grade C'
		ELSE 'Grade D'
	END AS SalaryGrade, COUNT(*) AS Total_Employee
From Employee 
GROUP BY 
CASE
	WHEN Salary >= 2500 THEN 'Grade A'
	WHEN Salary >= 2000 THEN 'Grade B'
	WHEN Salary >= 1500 THEN 'Grade C'
	ELSE 'Grade D'
END


/* 3. Display the employee salary grades and the number of employees between 2000 to 5000 range of salary. */
SELECT 
	CASE
		WHEN Salary >= 2500 THEN 'Grade A'
		WHEN Salary >= 2000 THEN 'Grade B'
		WHEN Salary >= 1500 THEN 'Grade C'	
		ELSE 'Grade D'
	END AS SalaryGrade, COUNT(*) AS No_Of_Employee
From Employee WHERE Salary BETWEEN 2000 AND 5000
GROUP BY 
CASE
	WHEN Salary >= 2500 THEN 'Grade A'
	WHEN Salary >= 2000 THEN 'Grade B'
	WHEN Salary >= 1500 THEN 'Grade C'	
	ELSE 'Grade D'
END

/*******************************************************************************************************************/
/*******************************************************************************************************************/
/*                                                 SubQueries                                                      */
/*******************************************************************************************************************/
/*******************************************************************************************************************/

/* 1. Display the employees list who got the maximum salary. */

SELECT * FROM EMPLOYEE WHERE SALARY = (SELECT MAX (Salary) FROM Employee)


/* 2. Display the employees who are working in the sales department. */

SELECT * FROM Employee WHERE DepartmentID = (SELECT DepartmentID FROM Department WHERE Name = 'Sales')


/* 3. Display the employees who are working as 'Clerk'. */

SELECT * FROM Employee WHERE JobID = (SELECT JobID FROM Job WHERE Designation = 'Clerk')


/* 4. Display the list of employees who are living in 'Boston'. */
SELECT * FROM Employee E WHERE E.DepartmentID = (SELECT DepartmentID FROM Department
JOIN Location ON Department.LocationID = Location.LocationID
WHERE Location.City = 'Boston');


/* 5. Find out the number of employees working in the sales department. */

SELECT COUNT(*) FROM Employee WHERE DepartmentID = (SELECT DepartmentID FROM Department WHERE Name = 'Sales')


/* 6. Update the salaries of employees who are working as clerks on the basis of 10%. */

UPDATE  Employee SET Salary = Salary * 1.10
WHERE EmployeeID IN (SELECT EmployeeID FROM Employee JOIN Job ON Employee.JobID = Job.JobID WHERE Job.Designation = 'Clerk')

/* OR */
UPDATE  Employee SET Salary = Salary * 1.10 WHERE JobID = (SELECT JobID FROM Job WHERE Designation = 'Clerk')

/* 7. Display the second highest salary drawing employee details. */

SELECT * FROM Employee WHERE Salary = (SELECT MAX(Salary) FROM Employee WHERE Salary < (SELECT MAX(Salary) FROM Employee ));
/* OR */
SELECT MAX(Salary) AS Second_Highest_Salary FROM Employee WHERE Salary < (SELECT MAX(Salary) FROM Employee )
/* OR */
SELECT * FROM 
(SELECT DENSE_RANK () OVER (ORDER BY Salary DESC) AS Salary_Rank, * FROM Employee)
Employee_Salary_Rank WHERE Salary_Rank = 2



/* 8. List out the employees who earn more than every employee in department 30. */

SELECT * FROM Employee WHERE Salary > (SELECT MAX(Salary) FROM Employee WHERE DepartmentID = 30)

/* 9. Find out which department has no employees. */

SELECT Name FROM Department WHERE DepartmentID NOT IN (SELECT DepartmentID FROM Employee)


/* 10. Find out the employees who earn greater than the average salary for their department. */

SELECT * FROM Employee E WHERE Salary > (SELECT AVG(Salary) FROM Employee WHERE DepartmentID = E.DepartmentID)