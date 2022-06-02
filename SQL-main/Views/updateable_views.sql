-- We can use views in insert, update and delete statements 
-- if and only if it doesn't contain following keywords
--      DISTINCT
--      Aggregate Functions: Min, Max, Sum
--      GROUP BY / HAVING
--      UNION
-- if we don't have any of the above keywords in views 
-- this view is called updatable view
-- which mean we can update data through it

-- while updating data we might exculde the row from the view
-- for this reason we use 'WITH OPTION CHECK'
-- which throw error if the query is going to exclude some rows of the view

CREATE VIEW AS order
    SELECT order_id, order_date, 'Active' as status
    FROM orders
    WHERE order_date >'2019-01-01'
    WITH OPTION CHECK