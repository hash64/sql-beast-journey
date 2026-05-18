# Interview Question: Day 1

**Q:** How would you return the 5 most recent orders without duplicate dates?

**Answer:** Use `SELECT DISTINCT` on date, or group by date with an aggregate (e.g., `MAX(order_id)`) to pick one order per date, then `ORDER BY date DESC LIMIT 5`. This demonstrates awareness of data uniqueness and business rules.

** SELECT DISTINCT invoicedate, invoiceid, total**
**FROM Invoice**
**Order BY invoicedate DESC**
**LIMIT 5**
