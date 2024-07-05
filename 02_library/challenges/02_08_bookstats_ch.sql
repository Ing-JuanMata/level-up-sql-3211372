-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
SELECT Published, COUNT(BookID) as [Total Books] FROM Books
GROUP BY Published
ORDER BY [Total Books] DESC;

-- Report 2: Show the five books that have been
-- checked out the most.
SELECT B.Title, COUNT(L.LoanID) AS [Total Loans] FROM Books B
INNER JOIN Loans L ON L.BookID = B.BookID
GROUP BY B.Title
ORDER BY [Total Loans] DESC, B.Title
LIMIT 5