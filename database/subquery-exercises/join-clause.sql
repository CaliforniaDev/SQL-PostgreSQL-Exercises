-- Subquery in JOIN clause
-- Any subquery that returns data compatible with the ON clause
-- The subquery must have an alias

-- This example is not a good example
-- Its just to show the syntax

SELECT first_name, user_id
FROM users
  JOIN (
    SELECT user_id
    FROM orders
    WHERE product_id = 3
  ) AS product_3_users ON product_3_users.user_id = users.id;