-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

-- Create Order
INSERT INTO Orders(CustomerID, OrderDate)
VALUES (
(
  SELECT
    CustomerID
  FROM
    Customers
  WHERE
    FirstName = 'Loretta' AND
    LastName = 'Hundey' AND
    Address = '6939 Elka Place'
),'2022-09-20 14:00');

-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Add Items to order
SELECT
  DishID
FROM
  Dishes
WHERE
  Name IN ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie');

INSERT INTO OrdersDishes(DishID, OrderID)
SELECT
  DishID,
  (
    SELECT MAX(OrderID) AS OrderID
    FROM Orders
    WHERE CustomerID IN (
      SELECT
        CustomerID
      FROM
        Customers
      WHERE
        FirstName = 'Loretta' AND
        LastName = 'Hundey' AND
        Address = '6939 Elka Place')
  ) AS OrderID
FROM
  Dishes
WHERE
  Name IN ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie');

SELECT * FROM OrdersDishes
WHERE OrderID IN (
  SELECT MAX(OrderID) AS OrderID
  FROM Orders
  WHERE CustomerID IN (
    SELECT
      CustomerID
     FROM
      Customers
    WHERE
      FirstName = 'Loretta' AND
      LastName = 'Hundey' AND
      Address = '6939 Elka Place')
);