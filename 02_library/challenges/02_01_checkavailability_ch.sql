-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT DISTINCT COUNT(DISTINCT B.BookID) AS 'Available Copies' FROM Loans L
INNER JOIN Books B ON B.BookID = L.BookID
where B.Title = 'Dracula' and ReturnedDate IS NOT NULL
AND B.BookID NOT IN (SELECT BookID FROM Loans WHERE ReturnedDate IS NULL)
ORDER BY ReturnedDate ASC;