-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT P.Email, COUNT(L.BookID) FROM Loans L
INNER JOIN Patrons P ON P.PatronID = L.PatronID
GROUP BY P.Email
ORDER BY COUNT(L.BookID);