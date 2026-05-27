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

## Joins
- `INNER JOIN` – matching rows only.
- `LEFT JOIN` – all left rows, NULLs where no match.
- `RIGHT JOIN` – all right rows (swap and use LEFT instead).
- Anti‑join: `LEFT JOIN ... WHERE right.key IS NULL`
- Self‑join: `FROM t a JOIN t b ON a.parent = b.id`
- Always alias tables for readability.

(Add more as you learn)
