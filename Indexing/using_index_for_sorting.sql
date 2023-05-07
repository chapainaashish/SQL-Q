-- Apart from using indexes as filtering data
-- we can use indexes for sorting data

-- Don't sort data if it is not necessary
EXPLAIN SELECT customer_id 
FROM customers ORDER BY first_name;


-- table: example
-- column: a, b  

-- let's create index
CREATE INDEX idx_a_b ON example(a,b);

-- now, we can sort data/ order data by this format
-- a 
-- a, b
-- a DESC b DESC 

-- except above any sort method will use filesort instead of index sort. file sort costs more time and space 

-- seeing cost of last query
SHOW STATUS LIKE 'last_query_cost';