CREATE DATABASE Library;

USE Library;

CREATE TABLE Branch (
  Branch_no INT PRIMARY KEY, 
  Manager_Id INT, 
  Branch_Address VARCHAR(50), 
  Contact_no VARCHAR(15)
);

CREATE TABLE Employee (
  Emp_Id INT PRIMARY KEY,
  Emp_name VARCHAR(50),
  Position VARCHAR(25),
  Salary DECIMAL(10, 2),
  Branch_no INT,
  FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);

CREATE TABLE Books (
  ISBN INT PRIMARY KEY,
  Book_Title VARCHAR(100),
  Category VARCHAR(50),
  Rental_Price DECIMAL(10, 2),
  Book_Status VARCHAR(10),
  Author VARCHAR(50),
  Publisher VARCHAR(50)
);


CREATE TABLE Customer (
  Customer_Id INT PRIMARY KEY,
  Customer_name VARCHAR(50),
  Customer_address VARCHAR(100),
  Reg_date DATE
);

CREATE TABLE IssueStatus (
  Issue_Id INT PRIMARY KEY,
  Issue_cust INT,
  Issued_book_name VARCHAR(100),
  Issue_date DATE,
  ISBN_book INT,
  
  CONSTRAINT fk_customer FOREIGN KEY (Issue_cust) 
  REFERENCES Customer(Customer_Id),
  
  CONSTRAINT fk_book FOREIGN KEY (ISBN_book) 
  REFERENCES Books(ISBN)
);

CREATE TABLE ReturnStatus(
  Return_Id INT PRIMARY KEY,
  Return_Cust VARCHAR(50),
  Return_book_name VARCHAR(100),
  Retuen_date DATE,
  ISBN_book2 INT,
  
  CONSTRAINT fk_book2 FOREIGN KEY (ISBN_book2) 
  REFERENCES Books(ISBN));

INSERT INTO Branch (Branch_no, Manager_Id, Branch_Address, Contact_no) VALUES
(1, 101, '123 Main St', '555-1234'),
(2, 102, '456 Elm St', '555-5678'),
(3, 103, '789 Oak St', '555-9012'),
(4, 104, '321 Pine St', '555-3456'),
(5, 105, '654 Maple St', '555-7890'),
(6, 106, '987 Cedar St', '555-4321'),
(7, 107, '159 Birch St', '555-6543'),
(8, 108, '753 Fir St', '555-8765'),
(9, 109, '852 Spruce St', '555-0987'),
(10, 110, '951 Willow St', '555-1238'),
(11, 111, '314 Sycamore St', '555-5679'),
(12, 112, '417 Aspen St', '555-9013'),
(13, 113, '618 Redwood St', '555-3457'),
(14, 114, '729 Beech St', '555-7891'),
(15, 115, '836 Palm St', '555-4322'),
(16, 116, '928 Pineapple St', '555-6544'),
(17, 117, '539 Orange St', '555-8766'),
(18, 118, '620 Lemon St', '555-0988'),
(19, 119, '731 Lime St', '555-1239'),
(20, 120, '842 Mango St', '555-5670');

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(201, 'John Doe', 'Librarian', 50000.00, 1),
(202, 'Jane Smith', 'Assistant', 35000.00, 2),
(203, 'Alice Johnson', 'Manager', 60000.00, 3),
(204, 'Bob Brown', 'Librarian', 48000.00, 4),
(205, 'Eve White', 'Technician', 40000.00, 5),
(206, 'Charlie Black', 'Librarian', 53000.00, 6),
(207, 'David Green', 'Assistant', 33000.00, 7),
(208, 'Fay Blue', 'Technician', 42000.00, 8),
(209, 'Grace Red', 'Manager', 61000.00, 9),
(210, 'Hank Gold', 'Librarian', 51000.00, 10),
(211, 'Ivy Silver', 'Assistant', 34000.00, 11),
(212, 'Jack Purple', 'Technician', 43000.00, 12),
(213, 'Kim Orange', 'Manager', 62000.00, 13),
(214, 'Leo Yellow', 'Librarian', 54000.00, 14),
(215, 'Mia Brown', 'Assistant', 32000.00, 15),
(216, 'Nina White', 'Technician', 44000.00, 16),
(217, 'Oscar Black', 'Manager', 63000.00, 17),
(218, 'Paul Green', 'Librarian', 52000.00, 18),
(219, 'Quinn Blue', 'Assistant', 31000.00, 19),
(220, 'Ruth Red', 'Technician', 45000.00, 20),
(221, 'Lucas Gray', 'Librarian', 48000.00, 1),
(222, 'Ella Davis', 'Assistant', 37000.00, 2),
(223, 'Chloe Martinez', 'Technician', 45000.00, 3),
(224, 'Mason Lee', 'Librarian', 53000.00, 4),
(225, 'Zoe Anderson', 'Assistant', 36000.00, 5),
(226, 'James Wilson', 'Technician', 44000.00, 6),
(227, 'Lily Thomas', 'Manager', 70000.00, 7),
(228, 'Benjamin Taylor', 'Librarian', 52000.00, 8),
(229, 'Oliver Jackson', 'Assistant', 34000.00, 9),
(230, 'Sofia White', 'Technician', 46000.00, 10),
(231, 'Henry Harris', 'Manager', 65000.00, 11),
(232, 'Ava Robinson', 'Librarian', 51000.00, 12),
(233, 'Mia Clark', 'Assistant', 38000.00, 13),
(234, 'Charlotte Lewis', 'Technician', 43000.00, 14),
(235, 'Elijah Young', 'Manager', 67000.00, 15),
(236, 'Nora Hall', 'Librarian', 54000.00, 1),
(237, 'Ethan Wright', 'Assistant', 39000.00, 2),
(238, 'Grace King', 'Technician', 47000.00, 3),
(239, 'Oliver Scott', 'Manager', 64000.00, 4),
(240, 'Chloe Green', 'Librarian', 53000.00, 5),
(241, 'Jackson Adams', 'Assistant', 40000.00, 6),
(242, 'Scarlett Baker', 'Technician', 45000.00, 7),
(243, 'Nathan Turner', 'Manager', 68000.00, 8),
(244, 'Liam Parker', 'Librarian', 55000.00, 9),
(245, 'Emily Roberts', 'Assistant', 37000.00, 10),
(246, 'Sophia Hall', 'Technician', 48000.00, 1),
(247, 'Daniel Moore', 'Manager', 72000.00, 2),
(248, 'Madison Taylor', 'Librarian', 49000.00, 3),
(249, 'Ryan Lee', 'Assistant', 39000.00, 4),
(250, 'Megan Brown', 'Technician', 46000.00, 5),
(251, 'Jackson Lee', 'Manager', 71000.00, 6),
(252, 'Avery Walker', 'Librarian', 54000.00, 7),
(253, 'Brianna Wright', 'Assistant', 36000.00, 8),
(254, 'Wyatt Anderson', 'Technician', 47000.00, 9),
(255, 'Lucy Hernandez', 'Manager', 69000.00, 10),
(256, 'Logan Hill', 'Librarian', 52000.00, 11),
(257, 'Liam Allen', 'Assistant', 41000.00, 12),
(258, 'Mia Young', 'Technician', 48000.00, 13),
(259, 'Samuel King', 'Manager', 73000.00, 14),
(260, 'Ella Lopez', 'Librarian', 55000.00, 15);


INSERT INTO Books (ISBN, Book_Title, Category, Rental_Price, Book_Status, Author, Publisher) VALUES
(1001, 'The Great Gatsby', 'Fiction', 10.99, 'Available', 'F. Scott Fitzgerald', 'Scribner'),
(1002, '1984', 'Fiction', 8.99, 'Issued', 'George Orwell', 'Secker & Warburg'),
(1003, 'To Kill a Mockingbird', 'Fiction', 9.99, 'Available', 'Harper Lee', 'J.B. Lippincott'),
(1004, 'The Catcher in the Rye', 'Fiction', 7.99, 'Available', 'J.D. Salinger', 'Little, Brown and Company'),
(1005, 'Moby-Dick', 'Fiction', 12.99, 'Issued', 'Herman Melville', 'Harper & Brothers'),
(1006, 'Pride and Prejudice', 'Romance', 6.99, 'Available', 'Jane Austen', 'T. Egerton'),
(1007, 'War and Peace', 'Historical', 15.99, 'Available', 'Leo Tolstoy', 'The Russian Messenger'),
(1008, 'Hamlet', 'Drama', 5.99, 'Issued', 'William Shakespeare', 'Norton'),
(1009, 'The Odyssey', 'Epic', 9.49, 'Available', 'Homer', 'Penguin Classics'),
(1010, 'The Divine Comedy', 'Poetry', 14.99, 'Issued', 'Dante Alighieri', 'La Biblioteca Italiana'),
(1011, 'The Hobbit', 'Fantasy', 11.99, 'Available', 'J.R.R. Tolkien', 'Allen & Unwin'),
(1012, 'Ulysses', 'Modernist', 13.99, 'Issued', 'James Joyce', 'Sylvia Beach'),
(1013, 'Brave New World', 'Science Fiction', 10.49, 'Available', 'Aldous Huxley', 'Chatto & Windus'),
(1014, 'The Iliad', 'Epic', 9.49, 'Issued', 'Homer', 'Penguin Classics'),
(1015, 'Don Quixote', 'Classic', 12.49, 'Available', 'Miguel de Cervantes', 'Francisco de Robles'),
(1016, 'Anna Karenina', 'Romance', 11.49, 'Available', 'Leo Tolstoy', 'The Russian Messenger'),
(1017, 'Crime and Punishment', 'Psychological', 10.99, 'Issued', 'Fyodor Dostoevsky', 'The Russian Messenger'),
(1018, 'The Brothers Karamazov', 'Philosophical', 13.99, 'Available', 'Fyodor Dostoevsky', 'The Russian Messenger'),
(1019, 'Les Misérables', 'Historical', 15.49, 'Available', 'Victor Hugo', 'A. Lacroix'),
(1020, 'The Stranger', 'Existential', 7.49, 'Issued', 'Albert Camus', 'Gallimard');

INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(301, 'Sam Wilson', '111 Sky St', '2023-01-15'),
(302, 'Tina Turner', '222 River St', '2023-02-10'),
(303, 'Paul Walker', '333 Lake St', '2023-03-05'),
(304, 'Emma Watson', '444 Hill St', '2023-04-20'),
(305, 'Lily Collins', '555 Valley St', '2023-05-30'),
(306, 'James Franco', '666 Mountain St', '2023-06-15'),
(307, 'Natalie Portman', '777 Ocean St', '2023-07-10'),
(308, 'Chris Hemsworth', '888 Desert St', '2023-08-25'),
(309, 'Jennifer Lawrence', '999 Forest St', '2023-09-15'),
(310, 'Daniel Radcliffe', '123 Breeze St', '2023-10-05'),
(311, 'Scarlett Johansson', '456 Wave St', '2023-11-18'),
(312, 'Leonardo DiCaprio', '789 Flame St', '2023-12-01'),
(313, 'Brad Pitt', '321 Earth St', '2024-01-07'),
(314, 'George Clooney', '654 Air St', '2024-02-14'),
(315, 'Angelina Jolie', '987 Water St', '2024-03-23'),
(316, 'Matt Damon', '234 Fire St', '2024-04-15'),
(317, 'Mila Kunis', '567 Light St', '2024-05-02'),
(318, 'Johnny Depp', '890 Shadow St', '2024-06-12'),
(319, 'Keira Knightley', '345 Dawn St', '2024-07-20'),
(320, 'Tom Hardy', '678 Dusk St', '2024-08-05');

INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES 
(401, 'David Beckham', '123 Elm St, London', '2021-12-15'),
(402, 'Taylor Swift', '456 Oak St, Nashville', '2021-11-22'),
(403, 'Chris Evans', '789 Pine St, Boston', '2021-10-05'),
(404, 'Ariana Grande', '321 Maple St, LA', '2021-09-14'),
(405, 'Emma Stone', '654 Cedar St, LA', '2021-08-30');

INSERT INTO IssueStatus (Issue_Id, Issue_cust, Issued_book_name, Issue_date, ISBN_book) VALUES
(401, 301, 'The Great Gatsby', '2023-02-01', 1001),
(402, 302, '1984', '2023-02-15', 1002),
(403, 303, 'To Kill a Mockingbird', '2023-03-10', 1003),
(404, 304, 'Moby-Dick', '2023-04-05', 1005),
(405, 305, 'Hamlet', '2023-05-01', 1008),
(406, 306, 'The Divine Comedy', '2023-06-20', 1010),
(407, 307, 'Ulysses', '2023-07-15', 1012),
(408, 308, 'The Iliad', '2023-08-05', 1014),
(409, 309, 'Crime and Punishment', '2023-09-10', 1017),
(410, 310, 'The Stranger', '2023-10-20', 1020),
(411, 311, '1984', '2023-11-15', 1002),
(412, 312, 'The Odyssey', '2023-12-01', 1009),
(413, 313, 'War and Peace', '2024-01-07', 1007),
(414, 314, 'Anna Karenina', '2024-02-10', 1016),
(415, 315, 'Don Quixote', '2024-03-15', 1015),
(416, 316, 'The Brothers Karamazov', '2024-04-05', 1018),
(417, 317, 'Les Misérables', '2024-05-20', 1019),
(418, 318, 'Brave New World', '2024-06-10', 1013),
(419, 319, 'Hamlet', '2024-07-05', 1008),
(420, 320, 'The Hobbit', '2024-08-15', 1011);

INSERT INTO ReturnStatus (Return_Id, Return_Cust, Return_book_name, Retuen_date, ISBN_book2) VALUES
(501, 'Sam Wilson', 'The Great Gatsby', '2023-03-05', 1001),
(502, 'Tina Turner', '1984', '2023-03-20', 1002),
(503, 'Paul Walker', 'To Kill a Mockingbird', '2023-04-15', 1003),
(504, 'Emma Watson', 'Moby-Dick', '2023-05-10', 1005),
(505, 'Lily Collins', 'Hamlet', '2023-06-01', 1008),
(506, 'James Franco', 'The Divine Comedy', '2023-07-05', 1010),
(507, 'Natalie Portman', 'Ulysses', '2023-08-01', 1012),
(508, 'Chris Hemsworth', 'The Iliad', '2023-09-10', 1014),
(509, 'Jennifer Lawrence', 'Crime and Punishment', '2023-10-15', 1017),
(510, 'Daniel Radcliffe', 'The Stranger', '2023-11-05', 1020),
(511, 'Scarlett Johansson', '1984', '2023-12-15', 1002),
(512, 'Leonardo DiCaprio', 'The Odyssey', '2024-01-20', 1009),
(513, 'Brad Pitt', 'War and Peace', '2024-02-25', 1007),
(514, 'George Clooney', 'Anna Karenina', '2024-03-20', 1016),
(515, 'Angelina Jolie', 'Don Quixote', '2024-04-15', 1015),
(516, 'Matt Damon', 'The Brothers Karamazov', '2024-05-10', 1018),
(517, 'Mila Kunis', 'Les Misérables', '2024-06-05', 1019),
(518, 'Johnny Depp', 'Brave New World', '2024-07-01', 1013),
(519, 'Keira Knightley', 'Hamlet', '2024-08-05', 1008),
(520, 'Tom Hardy', 'The Hobbit', '2024-09-10', 1011);

SELECT * FROM Books;

SELECT Book_Title, Category, Rental_Price 
FROM Books 
WHERE Book_Status = "Available";

SELECT * FROM Employee;

SELECT Emp_name, Salary 
FROM Employee 
ORDER BY Salary DESC;

SELECT * FROM Customer;

SELECT * FROM IssueStatus;

SELECT
 Books.Book_Title,
 Customer.Customer_name
FROM IssueStatus
JOIN
 Books ON IssueStatus.ISBN_book = Books.ISBN
JOIN
 Customer ON IssueStatus.Issue_cust = Customer.Customer_ID;
 
SELECT Category , Count(Category) as Total_Books_In_Each_Category
FROM Books
GROUP BY Category;

SELECT Emp_name, Position, Salary
FROM Employee
WHERE Salary >= 50000;

SELECT Customer_name
FROM Customer
WHERE Reg_date < '2021-12-15'
AND
Customer_id NOT IN(SELECT Issue_cust FROM IssueStatus);

SELECT * FROM Branch;

SELECT b.Branch_no, COUNT(e.Emp_Id) AS TotalEmployees
FROM Branch b
JOIN Employee e 
  ON b.Branch_no = e.Branch_no
GROUP BY Branch_no;

SELECT c.Customer_Name
FROM Customer c
JOIN IssueStatus i 
  ON c.Customer_ID = i.Issue_cust
WHERE i.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';

SELECT Book_Title
FROM Books
WHERE Category = "Historical";

SELECT b.Branch_no, COUNT(e.Emp_Id) AS Employee_Count
FROM Branch b
LEFT JOIN Employee e ON b.Branch_no = e.Branch_no
GROUP BY b.Branch_no
HAVING COUNT(e.Emp_Id) > 3;

SELECT e.Emp_name as Manager_Name, b.Branch_Address
FROM 
Employee e
JOIN 
Branch b ON e.Branch_no = b.Branch_no
WHERE Position = "Manager";


SELECT Customer.Customer_name
FROM IssueStatus
JOIN Books ON IssueStatus.ISBN_book = Books.ISBN
JOIN Customer ON IssueStatus.Issue_cust = Customer.Customer_Id
WHERE Books.Rental_Price > 10;


