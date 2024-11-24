/*
 ** LEAST operator:
 ** The LEAST operator returns the smallest value in a list of values.
 **
 **
 **
 ** 
 */
/*
 ** Exercise:
 ** All products are on sale.
 ** Price is the least of the products price * 0.5 or $400.
 ** Return the name, price, and sale_price of the products.
 */
SELECT
  name,
  price,
  LEAST(price * 0.5, 400) AS sale_price
FROM
  products;