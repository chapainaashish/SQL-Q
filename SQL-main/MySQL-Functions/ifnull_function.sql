-- ifnull() and coalesce function 

USE sql_store;

-- IFNULL() function is used to return assigned string if the value of the row is null
SELECT
	order_id, 
    ifnull(shipper_id, "Not assigned") AS shipper
FROM orders;

-- coalesce function check all the row and only return string if all fields found null
SELECT 
	order_id, 
    coalesce(shipper_id, comments, "shipper id and comments both not assigned") AS shipper_id
FROM orders;


SELECT concat(first_name, ' ', last_name) AS full_name,
	   coalesce(phone, "Unknown") AS phone
FROM customers;

