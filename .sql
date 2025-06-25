-- INSERT INTO Authors
INSERT INTO Authors (name, bio) VALUES 
('J.K. Rowling', 'Author of Harry Potter series'),
('George Orwell', 'Author of 1984 and Animal Farm'),
('Unknown Author', NULL);

-- INSERT INTO Publishers
INSERT INTO Publishers (name, location) VALUES 
('Bloomsbury', 'London'),
('Penguin Books', 'New York'),
('No Publisher', NULL);

-- INSERT INTO Books
INSERT INTO Books (title, author_id, publisher_id, year, isbn) VALUES 
('Harry Potter and the Philosopher\'s Stone', 1, 1, 1997, '9780747532699'),
('1984', 2, 2, 1949, '9780451524935'),
('Mystery Book', 3, NULL, 2020, NULL);

-- INSERT INTO Members
INSERT INTO Members (name, email, membership_date) VALUES 
('Alice Smith', 'alice@example.com', '2023-01-15'),
('Bob Johnson', 'bob@example.com', '2023-03-20'),
('Charlie', NULL, CURDATE());

-- INSERT INTO Loans
INSERT INTO Loans (book_id, member_id, loan_date, return_date) VALUES 
(1, 1, '2023-06-01', '2023-06-10'),
(2, 2, '2023-06-10', NULL),
(3, 3, '2023-06-15', NULL);

-- UPDATE: Add missing return dates
UPDATE Loans
SET return_date = '2023-06-20'
WHERE loan_id = 2;

-- UPDATE: Fix NULL email
UPDATE Members
SET email = 'charlie@example.com'
WHERE name = 'Charlie' AND email IS NULL;

-- DELETE: Remove book with NULL isbn
DELETE FROM Books
WHERE isbn IS NULL;

-- DELETE: Remove author without bio
DELETE FROM Authors
WHERE bio IS NULL;

