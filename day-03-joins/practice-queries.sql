-- Easy 1
-- List all tracks showing TrackId, track Name, and the genre name.
SELECT t.trackid, t.name as TrackName, g.name AS GenreName
from Track t
INNER JOIN Genre g on t.GenreId= g.GenreId

-- Easy 2
-- Show each album’s Title and the artist’s Name (from the artists table). Use aliases.
SELECT a.Title, ar.Name as ArtistName
FROM Album a
INNER JOIN Artist ar on a.artistid= ar.artistid

-- Easy 3
-- List all invoices (InvoiceId, Total) and the customer’s Email. Use INNER JOIN.
SELECT i.invoiceid, i.total, c.email as CustomerEmail
FROM Invoice i
INNER JOIN Customer c ON i.customerid = c.customerid

-- Medium 4
-- List every customer (CustomerId, FirstName, LastName) and their total spending (SUM(Total)). 
-- Include customers who have never purchased (show 0). Use LEFT JOIN and COALESCE.
SELECT c.customerid,c.firstname,c.lastname, COALESCE(SUM(i.total), 0) as TotalSpent
FROM Customer c
INNER JOIN Invoice i on c.CustomerId= i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName
ORDER BY TotalSpent DESC

-- Medium 5
-- Show the track Name, album Title, and artist Name (from artists). Join tracks → albums → artists.
SELECT t.name as Track, a.title as Title, ar.name as Artist
FROM Track t
INNER JOIN Album a on a.AlbumId = t.AlbumId
INNER Join Artist ar on t.Name = ar.Name

-- Medium 6
-- Find all customers who have no invoices. (Use LEFT JOIN and check for NULL in the right table’s primary key.)
SELECT c.CustomerId, c.FirstName, c.LastName
FROM Customer c
LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE i.InvoiceId IS NULL;

-- Hard 7
-- The employees table has ReportsTo linking to another employee’s EmployeeId. 
-- Write a query that displays each employee’s FirstName, LastName, and their manager’s FirstName and LastName. 
-- Include the boss (manager NULL). Use a self-join.
SELECT e.firstname AS EmployeeFN, e.lastname AS EmployeeLN, m.firstname AS ManagerFN, m.lastname As ManagerLN
FROM Employee e
LEFT JOIN Employee m on e.ReportsTo= m.EmployeeId

-- Hard 8
-- List each genre Name and the number of tracks in that genre. 
-- Include genres with 0 tracks. Use LEFT JOIN from genres to tracks, then GROUP BY and COUNT(t.TrackId).
SELECT g.name as GenreName, COUNT(t.trackid) As TrackCount
FROM Genre g
LEFT JOIN Track t on g.GenreId= t.GenreId
Group by g.GenreId,g.Name
ORDER BY TrackCount DESC

-- Hard 9
-- For each album, show AlbumId, Title, artist Name, and the number of tracks. 
-- Include albums that have no tracks (if any). Use LEFT JOIN from albums to tracks, then group and join to artists.
SELECT a.AlbumId,a.Title,ar.name as ArtistName, COUNT(t.trackid) As TrackCount
From Album a
Inner Join Artist ar on a.ArtistId=ar.ArtistId
Left JOIN Track t on a.AlbumId=t.AlbumId
Group by a.AlbumId,a.Title,ar.Name
ORDER BY TrackCount DESC

-- Hard 10
-- The invoice_items table links invoices to specific tracks. 
-- Show InvoiceId, track Name, and UnitPrice by joining invoice_items → tracks. Limit to first 20 rows.
SELECT ii.invoiceid, t.name as TrackName, ii.unitprice
FROM InvoiceLine ii
INNER JOIN Track t on ii.TrackId=t.TrackId
LIMIT 20 -- 20 makes the limit to restrictions of 20 count
