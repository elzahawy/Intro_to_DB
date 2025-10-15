INSERT INTO Authors (author_name) VALUES ('J.K. Rowling'), ('George R.R. Martin');

INSERT INTO Books (title, author_id, price, publication_date)
VALUES ('Harry Potter', 1, 19.99, '2001-07-21'),
       ('Game of Thrones', 2, 29.99, '1996-08-06');

INSERT INTO Customers (customer_name, email, address)
VALUES ('Keinan Abdi', 'keinan@example.com', 'Nairobi, Kenya');

INSERT INTO Orders (customer_id, order_date)
VALUES (1, '2025-10-15');

INSERT INTO Order_Details (order_id, book_id, quantity)
VALUES (1, 1, 2);
