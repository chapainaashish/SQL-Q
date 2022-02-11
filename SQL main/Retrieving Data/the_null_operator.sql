/*Getting customer who doesn't have phone number or null value on the phone field coloumn*/

SELECT *
FROM customers
WHERE phone IS NULL;

/*To get unshipped product*/

SELECT *
FROM orders
WHERE shipped_date IS NULL;

/*To get shipped product*/

SELECT *
FROM orders
WHERE shipped_date IS NOT NULL;