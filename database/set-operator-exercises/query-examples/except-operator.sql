-- EXCEPT Operator
-- The EXCEPT operator is used to return all rows in the first SELECT 
-- statement that are not returned by the second SELECT statement.
-- The order in which the SELECT statements are written is important.
-- The first SELECT statement is the one that will be used to compare
-- the second SELECT statement.
(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
EXCEPT 
(
    SELECT *
    FROM products
    ORDER BY price / weight DESC
    LIMIT 4
  );