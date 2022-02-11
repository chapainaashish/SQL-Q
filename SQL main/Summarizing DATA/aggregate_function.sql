-- Aggregate function are used to summarize database.
-- Some of the aggerate function in sql are following;
-- COUNT(column_name) -> to get total number of row [Conditions can be applied and it doesn't count null value]
-- AVG(numeric_column_name) ->  returns the average value of a numeric column [Conditions can be applied]
-- SUM(numeric_column_name) ->  returns the total value of a numeric column [Conditions can be applied]
-- MIN(coloumn_name) is used to get minimum value of that coloumn (can be used in string, date and numerical value)
-- MAX(coloumn_name) is used to get maximum value of that coloumn (can be used in string, date and numerical value)


--COUNT()
SELECT COUNT(state) AS Total_State
FROM customers;

--counting only distinct value
SELECT COUNT(DISTINCT state) AS Total_State
FROM customers;

--AVG()
SELECT AVG(points) AS Average_Points
FROM customers;

-- SUM()
SELECT SUM(points) AS Total
FROM customers;

-- MIN()
SELECT MIN(points) AS lowest_point
FROM customers;

--MAX()
SELECT MAX(points) AS highest_point
FROM customers;