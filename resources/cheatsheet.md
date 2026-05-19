# SQL Cheatsheet

## Basic Retrieval
- `SELECT * FROM t WHERE condition ORDER BY col LIMIT n;`
- `DISTINCT` removes duplicate rows entirely.

## Joins
- `INNER JOIN` – matching rows only.
- `LEFT JOIN` – all left rows, NULLs where no match.

## Aggregations & Grouping
- `SELECT country, SUM(sales) FROM orders GROUP BY country HAVING SUM(sales) > 1000;`
- Order of execution: FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT

(Add more as you learn)
