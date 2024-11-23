/*
** SELECT Subquery without FROM Statement
** The following examples show how to use a subquery without a FROM statement.
** This technique is useful when you want to use the result of a subquery as a value.
*/

SELECT
  (
    SELECT
      MAX(price)
    FROM
      products
  ) AS max_price;

SELECT
  (
    SELECT
      MAX(price)
    FROM
      products
  ) / ( -- Division operator
    SELECT
      AVG(price)
    FROM
      products
  );

SELECT
  (
    SELECT
      MAX(price)
    FROM
      products
  ), -- Comma operator
  (
    SELECT
      AVG(price),
      
    FROM
      products
  );