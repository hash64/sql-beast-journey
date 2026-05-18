-- Easy 1
# Customer Directory
# Retrieve FirstName, LastName, Country of all customers.

SELECT FirstName, LastName, Country
FROM Customer;

-- Easy 2
# Unique Shipping Countries
#List all distinct billing countries from the invoices table, sorted alphabetically

SELECT DISTINCT BillingCountry
FROM invoices
ORDER BY BillingCountry;

-- Medium 3
# Find all tracks whose name contains the word “love” (case‑insensitive). Show Name and Milliseconds. Sort by length descending, limit to 20.

SELECT Name, Milliseconds
FROM Track
WHERE name LIKE '%love%'
ORDER BY milliseconds DESC
LIMIT 20

--Medium 4
# Get all invoices dated between January 1, 2010 and December 31, 2010. Return InvoiceId, CustomerId, Total, InvoiceDate. Order by total descending.

SELECT invoiceid, customerid, total, invoicedate
FROM Invoice
WHERE invoicedate BETWEEN '2010-01-01 00:00:00' AND '2010-12-31 00:00:00'
ORDER BY total DESC

--Hard 5
# List FirstName, LastName, Email of customers whose last name also appears in the employees table’s LastName. Use a subquery with IN.

SELECT firstname, lastname, email
from Customer
where lastname IN (SELECT lastname from Employee)
