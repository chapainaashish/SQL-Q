-- Updating existing data of table
-- All coloumn value can be used to retrieve, delete, or update data
-- To update data, not only primary key but every coloumn can be used to specify  what we are going to change
-- BE CAREFUL, when updating records, if you omit the "WHERE" clause, ALL records will be updated!

UPDATE invoices
SET payment_total = 10, payment_date = '2022-01-01'
WHERE invoice_id = 1; 

-- We can perform  airthemetic operation with existing data and provide existing  data as new input
UPDATE invoices
SET payment_total = invoice_total * 0.5, payment_date = due_date
WHERE client_id = 3;


-- Giving extra 50 points to the customer who born before 1990
UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-01-01';

-- Using Subquery while updating data
-- Here Sub query is  getting client id from his name from another clients table
UPDATE invoices
SET payment_total = invoice_total * 0.5, payment_date = due_date
WHERE invoice_id = 
				(SELECT client_id
				FROM clients
				WHERE name = 'Myworks');

-- Sub query getting client state from client table and updating all the clent data who are from 'ca' and 'ny'
UPDATE invoices
SET payment_total = invoice_total * 0.5, payment_date = due_date
WHERE invoice_id IN
				(SELECT client_id
				FROM clients
				WHERE state IN ('CA', 'NY'));

-- Updating all user comment to  gold user tag who have more than 3000 points
UPDATE orders
SET comments = 'GOLD USER'
WHERE customer_id IN 
                (SELECT customer_id
                FROM customers
                WHERE points > 3000
                )