#!/usr/bin/python3
"""
A script that creates the database alx_book_store in a MySQL server.

This script connects to a MySQL server and creates the specified database.
It handles connection errors and ensures that the database connection is
properly closed.
"""

import mysql.connector

conn = None
cursor = None

try:
    # NOTE: Replace 'your_username' and 'your_password' with your MySQL credentials
    conn = mysql.connector.connect(
        host="localhost",
        user="your_username",
        password="your_password"
    )
    cursor = conn.cursor()
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as e:
    print(f"Error: {e}")

finally:
    if cursor:
        cursor.close()
    if conn and conn.is_connected():
        conn.close()