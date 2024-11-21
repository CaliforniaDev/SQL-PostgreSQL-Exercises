/*
Subqueries in SELECT clause
the subquery return a single value
 */
SELECT
  name,
  price,
  (
    SELECT
      MAX(price) --- Subquery that returns a single value
    FROM
      products
  )
FROM
  products
WHERE
  price > 867;

-------------------------------------------
--
--
SELECT
  name,
  price,
  (
    SELECT
      price
    FROM
      products
    WHERE
      id = 3
  ) AS id_3_price
FROM
  products
WHERE
  price > 867;

-------------------------------------------
--
--
SELECT
  name,
  price,
  price::FLOAT / (
    SELECT
      MAX(price)
    FROM
      products
  ) AS max_price
FROM
  products;