-- All keyword in SQL
-- ALL is like AND gate condition must be true for all range of list result
-- ALL means that the condition will be true only if the operation is true for all values in the range.
-- MIN(), MAX() can be used to instead of all keyword while comparing data

-- Select invoices larager than all invoice of 
-- client 3 / max invoice of client 3

-- Using max keyword
SELECT *
FROM invoices
WHERE invoice_total > (SELECT MAX(invoice_total) FROM invoices WHERE invoice_id = 3);

-- Using all keyword
SELECT *
FROM invoices
WHERE invoice_total > ALL (SELECT invoice_total FROM invoices WHERE invoice_id = 3);
