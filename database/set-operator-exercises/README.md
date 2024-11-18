# Notes on Set Operators in PostgreSQL

In PostgreSQL, set operators are used to combine the results of two or more `SELECT` queries into a single result set. The primary set operators are:

- **`UNION`**: Combines the results of two queries and removes duplicate rows.
- **`UNION ALL`**: Combines results and includes duplicates.
- **`INTERSECT`**: Returns only the rows common to both queries.
- **`EXCEPT`**: Returns rows from the first query that are not in the second query.

Set operators allow for efficient querying of data across multiple tables or query results.