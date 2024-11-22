/*
 * CORRELATED SUBQUERY
 * A correlated subquery is a subquery that uses values from the outer query.
 * The subquery is executed once for each row processed by the outer query.
 * Its like a for loop in a for loop.
 */
SELECT
  name,
  department,
  price
FROM
  products AS p1
WHERE
  p1.price = (
    SELECT
      MAX(price)
    from
      products AS p2
    WHERE
      p2.department = p1.department
  );


-- This is a correlated subquery inside a SELECT statement.
SELECT
  products.name,
  products.id,
  (
    SELECT
      COUNT(*)
    FROM
      orders
    WHERE
      orders.product_id = products.id
  ) AS number_of_orders
FROM
  products;

-- This uses JOIN instead of a correlated subquery to achieve the same result.
SELECT
  name,
  products.id,
  COUNT(*)
FROM
  products
  JOIN orders ON products.id = orders.product_id
GROUP BY
  name,
  products.id
ORDER BY
  products.id;