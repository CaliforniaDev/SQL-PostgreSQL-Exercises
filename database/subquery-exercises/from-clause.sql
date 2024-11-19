-- Subquery in FROM clause
-- It must return a result set
-- The result set can be used as a table in the FROM clause
-- The subquery must have an alias
-- The alias is used to reference the subquery in the FROM clause
-- Any subquery as long the select/from/where clauses are compatible
-- SELECT name,
--   price_weight_ratio
-- FROM (
--     SELECT name,
--       price / weight AS price_weight_ratio
--     FROM products
--   ) AS p
-- WHERE price_weight_ratio > 200;
-- SELECT max_price
-- FROM (
--     SELECT MAX(price)
--     FROM products
--   ) AS max_price;


SELECT AVG(order_count)
FROM (
    SELECT user_id,
      COUNT(*) AS order_count
    FROM orders
    GROUP BY user_id
  ) AS user_order_counts;