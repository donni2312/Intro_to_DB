-- A script that prints the full description of the table `Books`
-- from the database `alx_book_store`.
-- The database name will be passed as an argument to the mysql command.
-- You are not allowed to use the DESCRIBE or EXPLAIN statements.

SELECT
    COLUMN_NAME,
    COLUMN_TYPE,
    IS_NULLABLE,
    COLUMN_KEY,
    COLUMN_DEFAULT,
    EXTRA
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'Books';