-- Subquery in WHERE clause
-- Structure of data allowed to be returned by subquery 
-- depending on the operator used in the WHERE clause ex: >, <, IN, NOT IN, etc.
-- Most the time you can solve the same problem with a JOIN clause
-- But sometimes a subquery in the WHERE clause is more readable

-- The subquery in the WHERE clause is executed first
SELECT id
FROM orders
WHERE product_id IN (
    SELECT id
    FROM products
    WHERE price / weight > 50
  );

-- The same query using a JOIN clause
SELECT orders.id AS order_id
FROM orders
  JOIN products ON products.id = orders.product_id
WHERE products.price / products.weight > 50;