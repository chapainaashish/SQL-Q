--Limit is used to specify or limit  the output or result  to specific value

-- Getting only first three data
SELECT *
FROM customers
LIMIT 3;


-- Getting 3 value starting from data 6
-- It skip first 6 elements of data and proceed from there
-- In here 6 is said to be offset
SELECT *
FROM customers
LIMIT 6,3;

-- Getting top three loyal customers according to their points
SELECT * 
FROM customers
ORDER BY points DESC
LIMIT 3
