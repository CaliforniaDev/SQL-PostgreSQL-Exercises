/*
 ** GREATEST operator:
 ** The GREATEST operator returns the greatest value in a list of values.
 **
 **
 **
 ** 
 */
/*
 ** Exercise:
 ** Compute the cost to ship each item in the products table.
 ** Shipping is the maximum of (weight * $2) or $30.
 ** Return the name, weight, and shipping cost.
 */
SELECT
  name,
  weight,
  GREATEST(weight * 2, 30) AS shipping_cost
FROM
  products;