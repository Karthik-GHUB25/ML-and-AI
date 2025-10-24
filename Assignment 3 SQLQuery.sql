/*
Dataset: Jomato
 About the dataset:
 You work for a data analytics company, and your client is a food delivery platform similar to
 Jomato. They have provided you with a dataset containing information about various
 restaurants in a city. Your task is to analyze this dataset using SQL queries to extract valuable
 insights and generate reports for your client.
 Tasks to be performed:
 1. Create a stored procedure to display the restaurant name, type and cuisine where the
 table booking is not zero.
 2. Create a transaction and update the cuisine type ‘Cafe’ to ‘Cafeteria’. Check the result
 and rollback it.
 3. Generate a row number column and find the top 5 areas with the highest rating of
 restaurants.
 4. Use the while loop to display the 1 to 50.
 5. Write a query to Create a Top rating view to store the generated top 5 highest rating of
 restaurants.
 6. Create a trigger that give an message whenever a new record is inserted.
 */


 /************************************************ TASK 1 ********************************************************/
 /* 
 Create a stored procedure to display the restaurant name, type and cuisine where the
 table booking is not zero. 
 */

SELECT * FROM Jomato WHERE TableBooking > 1
DROP PROCEDURE usp_Task1_TBLBooking_NotZero
CREATE PROCEDURE usp_Task1_TBLBooking_NotZero
(
@TableBooking BIT
)
AS
BEGIN
IF @TableBooking <> 0 AND @TableBooking = 1

	BEGIN
		SELECT RestaurantName, RestaurantType, CuisinesType 
		FROM Jomato
		WHERE TableBooking = @TableBooking
	END
ELSE

	BEGIN
		SELECT ('Input parameter should be 1 - Variable Type is BIT') AS Bit_Error_Message
	END
END

EXECUTE usp_Task1_TBLBooking_NotZero 3


 /************************************************ TASK 2 ********************************************************/
 /* 
Create a transaction and update the cuisine type ‘Cafe’ to ‘Cafeteria’. Check the result
 and rollback it.. 
 */

BEGIN TRANSACTION
	UPDATE Jomato SET CuisinesType = 'Cafeteria' WHERE CuisinesType = 'Cafe'

ROLLBACK TRANSACTION

/************************************************ TASK 3 ********************************************************/
/* 
Generate a row number column and find the top 5 areas with the highest rating of
 restaurants. 
*/
 
SELECT RestaurantName, area, rating, Ranking
FROM (
    SELECT RestaurantName, area, rating,
           DENSE_RANK() OVER (ORDER BY rating DESC) AS Ranking
    FROM Jomato
) AS RankedRestaurants
WHERE Ranking <= 5



/*********************************************** TASK 4 ********************************************************/
/* Use the while loop to display the 1 to 50. */

DECLARE @Counter INT = 1;
WHILE @Counter <= 50
BEGIN
	SELECT * FROM Jomato WHERE OrderId = @Counter
	SET @Counter = @Counter + 1
END;


/* 
Below is the equivalent without using WHILE 
*/

SELECT * FROM Jomato WHERE OrderId BETWEEN 1 AND 50


/*********************************************** TASK 5 ********************************************************/
/* 
Write a query to Create a Top rating view to store the generated top 5 highest rating of
 restaurants. 
*/
DROP VIEW VW_Top_Five_Rating
CREATE VIEW VW_Top_Five_Rating
AS
SELECT RestaurantName, CuisinesType, area, rating
FROM 
(
    SELECT RestaurantName, CuisinesType, area, rating,
           DENSE_RANK() OVER (ORDER BY rating DESC) AS Top_Five
    FROM Jomato 
) RankedData
WHERE Top_Five<= 5



SELECT * FROM VW_Top_Five_Rating
/*********************************************** TASK 6 ********************************************************/
/*  
Create a trigger that give an message whenever a new record is inserted.
*/
CREATE TRIGGER TR_New_Record ON Jomato
AFTER INSERT
AS
BEGIN

SELECT ('A Record(s) is been Added')

END

INSERT INTO Jomato VALUES 
(7105, 'Assignment 3 Task 6', 'Casual Dining', 4.40000008427632, 1000, 250, 1, 1, 'North Indian, South Indian, Chaats', 'Brookefield', 'Whitefield', 39)
INSERT INTO Jomato VALUES 
(7106, 'Assignment 03 Task 06', 'Casual Dining', 4.40000007928632, 1000, 350, 1, 7, 'North Indian, South Indian, Sweets', 'Brookefield', 'Whitefield', 49)
