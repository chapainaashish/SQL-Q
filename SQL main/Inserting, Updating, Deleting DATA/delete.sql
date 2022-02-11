-- DELETING ROWS from table
-- Just like in UPDATE clause in DELETE  clause we can use subquery
-- We can provide subclauses to delete multiple data or delete single data

-- This will delete everything from table so very careful to use it
DELETE FROM invoices

-- DELETING a data which has 1 id 
DELETE FROM invoices
WHERE invoice_id = 1