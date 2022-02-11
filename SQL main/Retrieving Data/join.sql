-- Join -> Join clause is used to combine rows from two or more tables based on a related column between them

--TYPES   OF  JOINs
--               Inner JOIN
--                         JOIN ----> returns records that have matching values in both tables
--               Outer JOINS;
--                          LEFT JOIN-----> Returns all records from the left table, and the matched records from the right table
--                          RIGHT JOIN-----> Returns all records from the right table, and the matched records from the left table
--               CROSS JOIN---->Join every possible value of both tables
--               NATURAL JOIN-----> Join two tables according to common coloumn or properties
-- 				 COMPOUND JOIN----> Used to combine table which has more than one primary key or composite key

-- We don't have to typeout INNER or OUTER to explicit INNER JOIN or OUTER JOIN
-- Not recommended to use; RIGHT JOIN, NATURAL JOIN
-- If we have a exact same name coloumn on both table can use 'USING' clause instead of 'ON' which is sort and more readable
-- USING (common_column_name)

