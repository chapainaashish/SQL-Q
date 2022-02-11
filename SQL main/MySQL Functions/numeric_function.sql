-- Essential mysql numeric function

-- rounding a number
SELECT round(8.73);

-- trucncating a number by adding 3 number after decimal point
SELECT truncate(5.9034, 3);

-- ceiling returns the equal to or smallest greatest integer of any given number
SELECT ceiling(10.204);

-- floor returns the equal to or greatest smallest integer of any given number
SELECT floor(10.204);

-- ABS returns the absolute value of given number
-- like 5.2 if given is negative -5.2
SELECT abs(-7.9);

-- generating a random float number between 0 to 1
SELECT rand()

