-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT B.Title, P.FirstName, P.Email, L.DueDate 
FROM Loans AS L
INNER JOIN Patrons AS P ON P.PatronID = L.PatronID
INNER JOIN Books AS B ON B.BookID = L.BookID
WHERE L.DueDate = '2022-07-13';