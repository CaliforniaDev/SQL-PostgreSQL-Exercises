-- Subquery in WHERE clause
-- Structure of data allowed to be returned by subquery 
-- depending on the operator used in the WHERE clause ex: >, <, IN, NOT IN, etc.
-- Most the time you can solve the same problem with a JOIN clause
-- But sometimes a subquery in the WHERE clause is more readable
--
--
--




-- Subquery in WHERE clause returns a single column ---------------------------------------------
SELECT id
FROM orders
WHERE product_id IN (
    SELECT id
    FROM products
    WHERE price / weight > 50
  );
-- The same query using a JOIN clause -----------------------------------
SELECT orders.id AS order_id
FROM orders
  JOIN products ON products.id = orders.product_id
WHERE products.price / products.weight > 50;





-- Subquery in WHERE clause returns a single value ---------------------------------------------
SELECT name
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
  );

-- The same query using a JOIN clause -----------------------------------
SELECT name
FROM products
  JOIN (
    SELECT AVG(price) AS avg_price
    FROM products
  ) as p ON products.price > p.avg_price;