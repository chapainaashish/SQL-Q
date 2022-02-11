-- aggergate function examples;
-- Selecting first half
SELECT 'First half of 2019' AS date_range,
 SUM(invoice_total) AS total_sales,
 SUM(payment_total) AS total_payments, 
 SUM(invoice_total - payment_total) AS difference
 FROM invoices
 WHERE invoice_date
 BETWEEN '2019-01-01' AND '2019-06-30'

 UNION

-- Selecting second half
 SELECT 'Second half of 2019' AS y,
 SUM(invoice_total) AS total_sale,
 SUM(payment_total) AS total_payment, 
 SUM(invoice_total - payment_total) AS difference
 FROM invoices
 WHERE invoice_date
 BETWEEN '2019-06-30' AND '2019-12-30'

 UNION

-- Selecting total
 SELECT 'Total' AS date_range,
 SUM(invoice_total) AS total_sales,
 SUM(payment_total) AS total_payments, 
 SUM(invoice_total - payment_total) AS difference
 FROM invoices
 WHERE invoice_date
 BETWEEN '2019-01-01' AND '2019-12-30'
 