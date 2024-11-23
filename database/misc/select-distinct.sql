/*
**  SELECT DISTINCT
**  The SELECT DISTINCT statement is used to return only distinct (different) values. 
**  Useful when exploring a dataset and you want to see the unique values in a column.
**  Its function is similar to using the GROUP BY clause.
*/

SELECT department
FROM products;

SELECT COUNT(DISTINCT department)
FROM products;

SELECT DISTINCT department, name
FROM products;


-- The following query uses a subquery to get the distinct departments.
SELECT  COUNT(*)
FROM (
    SELECT department
    FROM products
    GROUP BY department
) AS distinct_departments;

