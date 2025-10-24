/* Dataset: Jomato
 About the dataset:
 You work for a data analytics company, and your client is a food delivery platform similar to
 Jomato. They have provided you with a dataset containing information about various
 restaurants in a city. Your task is to analyze this dataset using SQL queries to extract valuable
 insights and generate reports for your client */


/*  Tasks to be performed:
 1. 
 2. Use the function to display the restaurant name and cuisine type which has the
 maximum number of rating.
 3. Create a Rating Status column to display the rating as ‘Excellent’ if it has more the 4
 start rating, ‘Good’ if it has above 3.5 and below 5 star rating, ‘Average’ if it is above 3
 and below 3.5 and ‘Bad’ if it is below 3 star rating.
 4. Find the Ceil, floor and absolute values of the rating column and display the current date
 and separately display the year, month_name and day.
 5. Display the restaurant type and total average cost using rollup.
 */

 /* Task 1
 Create a user-defined functions to stuff the Chicken into ‘Quick Bites’. Eg: ‘Quick
 Chicken Bites’.
 */

 SELECT * FROM Jomato WHERE CuisinesType = 'Cafe'

CREATE FUNCTION udf_Task1_Quick_Chicken_Bites
(
@Input_Parm1 VARCHAR (50), /* Quick Bites */
@Input_Parm2 VARCHAR (50)  /* Quick Chicken Bites */
)
RETURNS table
RETURN
(
SELECT RestaurantType, 
	CASE
		WHEN RestaurantType = @Input_Parm1 THEN @Input_Parm2
		ELSE RestaurantType
	END AS Modified_Column
	FROM Jomato
)

SELECT * FROM udf_Task1_Quick_Chicken_Bites ('Quick Bites', 'Quick Chicken Bites')

/* TASK 2
Use the function to display the restaurant name and cuisine type which has the maximum number of rating. */

SELECT RestaurantName, CuisinesType, MAX(No_of_Rating) AS Highest_Rating FROM Jomato
GROUP BY CuisinesType, RestaurantName 

/*  TASK 3
Create a Rating Status column to display the rating as ‘Excellent’ if it has more the 4 start rating, ‘Good’ if it 
has above 3.5 and below 5 star rating, ‘Average’ if it is above 3  and below 3.5 and ‘Bad’ if it is below 3 Star rating */


SELECT RestaurantName, Rating,
	CASE
		WHEN Rating > 4 THEN 'Excellent'
		WHEN Rating BETWEEN 3.5 and 5.0 THEN 'Good'
		WHEN Rating BETWEEN 3.0 and 3.5 THEN 'Average'
		ELSE
		'Bad'
	END RatingStatus
FROM Jomato

/*  TASK 4
Find the Ceil, floor and absolute values of the rating column and display the current date  and separately 
display the year, month_name and day */

SELECT 
RestaurantName, 
Ceiling(Rating) AS Ceiling_Value, 
Floor(Rating) AS Floor_Value, 
CONVERT(DATE, GETDATE()) AS CurrentDate, 
DAY(GETDATE()) AS _Day, 
MONTH(GETDATE()) AS Month_Name, 
YEAR(GETDATE()) AS _Year 
FROM Jomato

/* TASK 5
Display the restaurant type and total average cost using rollup */

SELECT RestaurantType, SUM(AverageCost) AS TotalAverageCost
FROM
Jomato
GROUP BY ROLLUP (RestaurantType)
