-- Union example
-- Both queries must have the same number of columns
-- The columns must have the same data type
-- The columns in the first query are used to determine the name of the columns in the result set
-- The columns in the second query are ignored


(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
UNION
(
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
)
