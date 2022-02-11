-- Essential string function in mysql

-- to get the len of string
SELECT length("Aashish");

-- to get string in uppercase
SELECT upper("Aashish");

-- to get string in lowercase
SELECT lower("Aashish");

-- to trim string by eliminating unnecessary both left and right whitespace
-- ltrim and rtrim can be used to trim left and right side whitespace respectively
SELECT trim("  aashish  ");

-- to get the first n character from the left and right  side of string left and right function can be used respectively
-- substring return the n number of character starting from n to  specified number
-- below from 3 until 5 character of string
SELECT substring("aashishsharma", 3, 5);

-- searching or locating specific character in string
-- it isn't case sensitive
-- return the index of that character
SELECT locate("c", "aashishchapain");

-- Replacing the sequence of character in string
--					string	to be changed new_character 
SELECT replace("aashishsharma", "sharma", "chapain");

-- concating two string
SELECT concat("aashish", "sharma");

-- a better example of concat function
USE sql_store;
SELECT concat(first_name, ' ', last_name) AS full_name
FROM customers;
