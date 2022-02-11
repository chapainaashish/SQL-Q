-- IN ->  allows to specify multiple values in WHERE clause
--BETWEEn -> selects value within range

-- Without using IN keyword
SELECT *
FROM customers
WHERE state = 'VA' or state = 'GA' or state = 'FL';

-- With 'IN' keyword
SELECT *
FROM customers
WHERE state IN ('VA', 'Fl', 'GA');

-- Using 'NOT' and 'IN' keyword
SELECT *
FROM customers
WHERE state NOT IN ('VA', 'Fl', 'GA');

-- To get points between 1000 and 3000
-- Without using BETWEEN keyword
SELECT *
FROM customers
WHERE points >=1000 AND points <= 3000;


-- Using BETWEEN operator 
SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000;

--Return customer who born between 1990 and 2000 using BETWEEN keyword
SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';