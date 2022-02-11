/* Displaying user point which are greater than 3000
<> and != both indicate not equal to operator
 */

SELECT * 
FROM customers
WHERE points>3000;

/* Displaying user information whose state is VA
note that string should be quoted while comparing 
*/

SELECT * 
FROM customers
WHERE state = 'VA';


/* Displaying user information whose birth date greater than 1990
NOTE: In SQL we pass date as string following by the given conviences
YYYY-MM-DD
*/

SELECT * 
FROM customers
WHERE birth_date > '1990-01-01';

/* GET the orders placed this year*/

SELECT * 
FROM orders
WHERE order_date >= '2019-01-01';

-- Getting the orders placed this year
-- Reccommended way
SELECT * 
FROM orders
WHERE year(order_date) >= year(now());


/* Use of multiple condition using AND OR NOT*/

SELECT * 
FROM customers
WHERE birth_date > '1990-01-01' AND points > 1000;


/* Use of NOT
NOTE: NOT negate the given condition*/

SELECT * 
FROM customers
WHERE NOT birth_date > '1990-01-01' AND NOT points > 1000;