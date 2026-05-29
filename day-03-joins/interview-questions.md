## “What is the difference between INNER JOIN and LEFT JOIN? When would you use a LEFT JOIN to find missing data?”

An INNER JOIN returns only rows with matching keys in both tables. A LEFT JOIN returns all rows from the left table plus matching rows from the right; non‑matching rows have NULLs in the right columns. I’d use a LEFT JOIN with WHERE right_table.id IS NULL to find records that exist in the left table but have no related entry in the right — for instance, customers who have never placed an order, or employees without a manager. This is a standard anti‑join pattern.
