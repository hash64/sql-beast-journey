# Day 3: Joins

- `INNER JOIN` – rows with matches in both tables.
- `LEFT JOIN` – all left rows, NULLs if no match.
- `RIGHT JOIN` – all right rows (rarely used).
- Use table aliases for brevity: `FROM customers c LEFT JOIN invoices i ON ...`
- Combine with GROUP BY and aggregates for reports.
- Self‑join: join a table to itself to represent hierarchical data (e.g., employees → managers).
