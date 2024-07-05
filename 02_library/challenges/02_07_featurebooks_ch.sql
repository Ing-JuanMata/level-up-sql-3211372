-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT DISTINCT B.Title FROM Books B
LEFT OUTER JOIN Loans L ON L.BookID = B.BookID
WHERE (B.Published BETWEEN 1890 AND 1899) AND
L.ReturnedDate IS NOT NULL
ORDER BY B.Title;