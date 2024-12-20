-- INTERSECT example
-- The INTERSECT operator returns the common rows between two queries.
-- It removes duplicates from the result set.
-- INTERSECT ALL keeps duplicates if they exist multiple times in both queries.
(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
INTERSECT
(
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
)
ORDER BY price DESC;