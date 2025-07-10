-- A script that inserts a single row into the Customers table.
-- The database name will be passed as an argument of the mysql command.

USE alx_book_store;

INSERT INTO Customer (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');