-- Create a table in the database to store customer
-- responses to our anniversary invitation.
CREATE TABLE Responses(
id INTEGER NOT NULL PRIMARY KEY
);
-- Associate a customer's ID number with the number of people
-- they plan to bring in their party.
ALTER TABLE Responses ADD COLUMN customerId INTEGER;
ALTER TABLE Responses ADD COLUMN guests INTEGER;
-- Hint: SQLite offers the INTEGER and REAL datatypes