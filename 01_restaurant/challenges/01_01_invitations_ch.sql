-- Generate a list of customer information.
SELECT * FROM Customers;
-- Show their first name, last name, and email address.
SELECT
  FirstName as 'First Name',
  LastName as 'Last Name',
  Email as 'Email Address'
FROM
  Customers;
-- Sort the list of results by last name.
SELECT
  FirstName as 'First Name',
  LastName as 'Last Name',
  Email as 'Email Address'
FROM
  Customers
ORDER BY 
  LastName;