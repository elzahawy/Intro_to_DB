-- Create database
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use the database
USE alx_book_store;

-- Create Authors table
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

--  Books table
CREATE TABLE IF NOT EXISTS Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

--  Customers table
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215),
    address TEXT
);

--  Orders table
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Order_Details table
CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Optional: Sample data for testing
INSERT INTO Authors (author_name) VALUES ('J.K. Rowling'), ('George R.R. Martin');

INSERT INTO Books (title, author_id, price, publication_date)
VALUES ('Harry Potter', 1, 19.99, '2001-07-21'),
       ('Game of Thrones', 2, 29.99, '1996-08-06');

INSERT INTO Customers (customer_name, email, address)
VALUES ('Keinan Abdi', 'keinan123@gmail.com', 'Nairobi, Kenya');

INSERT INTO Orders (customer_id, order_date)
VALUES (1, '2025-10-15');

INSERT INTO Order_Details (order_id, book_id, quantity)
VALUES (1, 1, 2);
INSERT INTO Authors (author_name) VALUES ('J.K. Rowling'), ('George R.R. Martin');

INSERT INTO Books (title, author_id, price, publication_date)
VALUES ('Harry Potter', 1, 19.99, '2001-07-21'),
       ('Game of Thrones', 2, 29.99, '1996-08-06');

INSERT INTO Customers (customer_name, email, address)
VALUES ('Keinan Abdi', 'keinan123@gmail.com', 'Nairobi, Kenya');

INSERT INTO Orders (customer_id, order_date)
VALUES (1, '2025-10-15');

INSERT INTO Order_Details (order_id, book_id, quantity)
VALUES (1, 1, 2);
