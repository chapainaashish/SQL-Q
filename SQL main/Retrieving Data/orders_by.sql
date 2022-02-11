/*Sorting or Ordering customer by their first name*/
SELECT *
FROM customers
ORDER BY first_name;

/*Sorting or Ordering customer by their first name but in descending order*/
SELECT *
FROM customers
ORDER BY first_name  DESC;

/*Sorting or Ordering customer by their state at first in descending order and then with their first name*/
SELECT *
FROM customers
ORDER BY state DESC, first_name;

/*Sorting item according to total price and which order id is 2*/
/*Here we are creating new coloumn with total price to display total price*/
SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC;



