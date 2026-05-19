# “What is the difference between WHERE and HAVING?”

### WHERE filters rows before any grouping occurs; it cannot contain aggregate functions. HAVING filters groups after GROUP BY and can contain aggregate conditions. In a query with both, WHERE runs first, then GROUP BY, then HAVING. A practical example: if I want to exclude individual orders under 5 but only show countries where totalsales exceed 1000, I’d use WHERE Total > 5 and HAVING SUM(Total) > 1000
