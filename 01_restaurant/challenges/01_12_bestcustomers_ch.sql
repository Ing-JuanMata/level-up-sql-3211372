-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT c.FirstName, c.LastName, c.Email, Count(o.OrderID) as 'Total Orders' FROM Orders AS o
INNER JOIN Customers AS c ON c.CustomerID = o.CustomerID
GROUP BY o.CustomerID
ORDER BY Count(o.OrderID) DESC;