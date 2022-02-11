-- datetime function in sql

-- Getting current date and time
SELECT now();

-- Getting current date without timestamp
SELECT curdate();

-- Getting current time without date
SELECT curtime();

-- Extracting year, month, day, hour, minute and second from now function
-- NOTE: this all function return int VALUES
SELECT year(now()), month(now()), day(now()), hour(now()), min(now()), second(now());

-- This functions return string
SELECT dayname(now()), monthname(now());

-- Extract function is avilable in all sql varieties
SELECT extract(day from now()), extract(month from now()), extract(year from now()); 

-- Let's learn through example
-- Getting the orders placed this year
-- Reccommended way
SELECT * 
FROM orders
WHERE year(order_date) >= year(now());

-- FORMATING DATES AND TIME
SELECT date_format(now(), "Today is %M %D %Y");
SELECT time_format(now(), "Current time is %H %i %p");

-- calculating difference between two times
                                                  
-- going 2 year in the future to the current date and time
SELECT date_add(now(), interval 2 year);

-- going 2 year back to the current date and time
SELECT date_sub(now(), interval 2 year);

-- getting difference between two date
-- returns the number of days
SELECT datediff(now(), '2019-01-01');

-- getting difference between two times
SELECT time_to_sec('9:05') - time_to_sec('9:00');                
