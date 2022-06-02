-- Primary key - Unique identifier for each row
-- Foreign key - Determines realationsip with another tabels
-- The foreign key of one table is primary key for one table
-- Composite primary key comtains more than one coloumn

-- '=' for query which return single value
-- 'IN' for query which return multiple values

-- Aliases-> used to give a table, or a coloumn in a table, a temprorary name
-- An alias only exists for the duration of that query and often used to make columns name more readable

-- tips for naming conveintion
-- VIEW/TRIGGERS/EVENTS name should be specific and meaningful so that we can search it quickly and easily

/* selecting sql_store table */
USE sql_store;

/* Syntax for selecting data
SELECT coloumn1/coloumn field name, coloumn2, .....
FROM table_name*/

/* Selecting all field from coustomers*/
SELECT *
FROM customers;


/* Selecting only phone and name from coustomers table*/
Select first_name, phone 
FROM customers;

/*WHERE: to filter the table
ORDER BY: to order data 
ORDER BY will sort data in alphabetical order if data is in alphabetical form*/

SELECT *
FROM customers
ORDER BY first_name;

-- Order of operation in SQL
-- SELECT
-- FROM
-- JOIN
-- WHERE
-- GROUP BY
-- HAVING 
-- ORDER BY
-- LIMIT