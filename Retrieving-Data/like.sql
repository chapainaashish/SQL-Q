-- LIKE -> Used in 'WHERE' clause to search specific pattern in a column

-- '%' is used instead of '*' to match remaining whatever characters
-- Customer whose lastname start with 'b'
-- The 'b' alphabet we are providing isn't case sensitive, B = b
SELECT *
FROM customers
WHERE last_name LIKE 'b%';


-- Underscore is used to match exact number of charcters before or after search pattern
SELECT  *
FROM customers
WHERE last_name LIKE '______y';