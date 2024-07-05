-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
SELECT
  r.*
FROM
  Customers AS c
INNER JOIN
  Reservations AS r
ON
  r.CustomerID = c.CustomerID
WHERE
  c.FirstName like 'St%'
AND
  r.PartySize = 4
ORDER BY
  r.Date;