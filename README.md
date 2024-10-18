# Library Management System

## Overview
The Library Management System (LMS) is a database application designed to manage the operations of a library, including managing branches, employees, books, customers, and the status of issued and returned books.

## Database Structure
The LMS consists of the following tables:

1. **Branch**
   - **Branch_no** (INT, Primary Key)
   - **Manager_Id** (INT)
   - **Branch_Address** (VARCHAR)
   - **Contact_no** (VARCHAR)

2. **Employee**
   - **Emp_Id** (INT, Primary Key)
   - **Emp_name** (VARCHAR)
   - **Position** (VARCHAR)
   - **Salary** (DECIMAL)
   - **Branch_no** (INT, Foreign Key referencing Branch)

3. **Books**
   - **ISBN** (INT, Primary Key)
   - **Book_Title** (VARCHAR)
   - **Category** (VARCHAR)
   - **Rental_Price** (DECIMAL)
   - **Book_Status** (VARCHAR)
   - **Author** (VARCHAR)
   - **Publisher** (VARCHAR)

4. **Customer**
   - **Customer_Id** (INT, Primary Key)
   - **Customer_name** (VARCHAR)
   - **Customer_address** (VARCHAR)
   - **Reg_date** (DATE)

5. **IssueStatus**
   - **Issue_Id** (INT, Primary Key)
   - **Issue_cust** (INT, Foreign Key referencing Customer)
   - **Issued_book_name** (VARCHAR)
   - **Issue_date** (DATE)
   - **ISBN_book** (INT, Foreign Key referencing Books)

6. **ReturnStatus**
   - **Return_Id** (INT, Primary Key)
   - **Return_Cust** (VARCHAR)
   - **Return_book_name** (VARCHAR)
   - **Retuen_date** (DATE)
   - **ISBN_book2** (INT, Foreign Key referencing Books)

## Data Insertion
Sample data is inserted into each table to facilitate testing and demonstrate the system's functionality.

## Queries
The following queries can be executed to interact with the database:
- List all books and their details.
- Retrieve available books with their titles, categories, and rental prices.
- List all employees and their salaries, sorted in descending order.
- Retrieve customer information.
- Track issued books along with customer names.

## Usage
To use the Library Management System:
1. Create the database and tables as defined above.
2. Insert the sample data.
3. Execute the provided queries to view or manipulate data as needed.

## Requirements
- MySQL Workbench or any compatible SQL environment to execute the SQL scripts.
- Basic understanding of SQL to modify queries or add more functionalities.

## License
This project is open-source and available for use and modification.
