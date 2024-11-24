/*
** CASE operator:
** The CASE operator returns a value based on a condition.
**
** Exercise:
** Print each product and its price. Also print a description of the price.
** If pice > 600 then 'high'
** If price > 300 then 'medium
** else print 'cheap 
*/

SELECT
  name,
  price,
  CASE
    WHEN price > 600 THEN 'high'
    WHEN price > 300 THEN 'medium'
    ELSE 'cheap'
  END AS price_description
FROM
  products;