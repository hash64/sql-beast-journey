-- Easy 1: How many tracks are in the tracks table?
SELECT COUNT(*) AS total_tracks
FROM tracks;

-- Easy 2: What is the average total amount of an invoice?
SELECT AVG(total) as avg_inv_total
FROM Invoice;

-- Medium 3: Total spent per customer
SELECT customerid, SUM(total) as total_invoices
from Invoice
GROUP BY customerid
Order BY total_invoices DESC

-- Medium 4: Genres with >50 tracks
SELECT GenreId, COUNT(*) AS TrackCount
FROM tracks
GROUP BY GenreId
HAVING COUNT(*) > 50
ORDER BY TrackCount DESC;
  
-- Hard 5: Loyal high-spenders
SELECT CustomerId, SUM(Total) AS TotalSpent, COUNT(*) AS InvoiceCount
FROM invoices
GROUP BY CustomerId
HAVING COUNT(*) >= 3 AND SUM(Total) > 40
ORDER BY TotalSpent DESC;
