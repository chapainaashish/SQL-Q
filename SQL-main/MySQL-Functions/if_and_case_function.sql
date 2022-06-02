-- if function only allow two expression 
-- for evaluating more expression we  use case function
-- if(expression, true-first, false-second) 

SELECT
	order_id, 
    order_date,
    if(year(order_date) = year(now()), 'Active', 'Archieved') AS category
FROM orders;


-- printing 'many times' if product is ordered more than one else once
SELECT 
	product_id, 
    name, 
    count(product_id) AS orders,
    if(count(order_items.product_id) > 1, 'Many times', 'Once') AS frequency
FROM products
JOIN order_items
	USING(product_id)
GROUP BY product_id

--  CASE OPERATION

-- Evaluating multiple case and condition
SELECT
	order_id, 
    order_date,
    CASE
		WHEN year(order_date) = year(now()) THEN 'Active'
        WHEN year(order_date) = year(now()) - 1 THEN 'Last year'
        WHEN year(order_date) < year(now()) - 1 THEN 'Archieved'
        ELSE 'Future'
	END AS category
FROM orders;

-- assigning user rank according to their rank
SELECT 
	customer_id,
	first_name,
    CASE
		WHEN points>2000 THEN 'Gold'
        WHEN points BETWEEN 1000 AND 2000 THEN 'Silver'
        WHEN points<2000 THEN 'Bronze'
		ELSE 'Unclassified'
	END as customer_rank
FROM customers