-- INTERSECT example
-- The INTERSECT operator returns the common rows between two queries.


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
