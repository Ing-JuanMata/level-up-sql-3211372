-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022. F(29,2022)
SELECT
  r.*
FROM
  Customers AS c
INNER JOIN 
  Reservations AS r
ON
  r.CustomerID = c.CustomerID
WHERE
  c.FirstName = 'Norby'
AND
  Date(Date) > '2022-07-24';

--Delete info using previous query
DELETE FROM
  Reservations
WHERE
  ReservationID = 2000