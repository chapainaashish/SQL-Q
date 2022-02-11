--In SQL there exist REGEXP operator which is used search specific string over database
--NOTE: we don't have to provide search pattern while using REGEXP keyword

-- '|' = OR,
-- '$' = endswith
-- '^' = startwith, 
-- '[]' = to match any single character listed in the brackets,
-- [a-f] = to match any range from a to f


SELECT *
FROM customers
WHERE last_name REGEXP 'field';


-- We can do regx searching just like in python to search specific character
SELECT *
FROM customers
WHERE last_name REGEXP 'field$|mac|rose';

