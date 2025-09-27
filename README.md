# SQL Bootcamp Portfolio - Future Collars

## About This Project

This repository serves as my portfolio for the "SQL Bootcamp" course provided by Future Collars. It contains a series of SQL scripts, ranging from basic data manipulation exercises to a comprehensive final project. Each script demonstrates my ability to work with relational databases, write complex queries, and solve practical data-related tasks.

---

## Skills Demonstrated

This collection of projects showcases my proficiency in a wide range of SQL concepts, including:

- **Data Definition Language (DDL):** `CREATE DATABASE`, `CREATE TABLE`, `ALTER TABLE`, `DROP COLUMN`.
    
- **Data Manipulation Language (DML):** `INSERT`, `UPDATE`, `DELETE`.
    
- **Data Query Language (DQL):** `SELECT`, `WHERE` clauses with operators like `AND`, `OR`, `LIKE`, `IN`, `BETWEEN`, `IS NULL`.
    
- **Sorting and Ordering:** `ORDER BY`.
    
- **Aggregate Functions:** `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`, with `GROUP BY` and `HAVING`.
    
- **Scalar & String Functions:** `ROUND`, `ABS`, `CONCAT`, `UPPER`, `LOWER`, `LENGTH`, `SUBSTRING`.
    
- **Date & Time Functions:** Extracting `YEAR`, `MONTH`, `DAY`, `WEEK`, etc.
    
- **Joins:** `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `CROSS JOIN`.
    
- **Set Operators:** `UNION`.
    
- **Common Table Expressions (CTEs):** Using the `WITH` clause to create temporary views.
    
- **Database Design:** Implementing Primary Keys, Foreign Keys, and various constraints (`NOT NULL`, `UNIQUE`, `PRIMARY KEY`).
    

---

## Repository Structure & Project Descriptions

Here is a breakdown of each script and the tasks accomplished within it.

#### Module 1: Database & Data Manipulation Basics

- **`01_Library_Database_Basics.sql`**: Covers fundamental DDL and DML commands, including creating a database and table, inserting, updating, and deleting records.
    
- **`02_Mentors_Table_Manipulation.sql`**: Focuses on table creation with constraints, inserting multiple records, and targeted `UPDATE` operations.
    
- **`03_Gift_List_CRUD_Operations.sql`**: Practices basic CRUD (Create, Read, Update, Delete) operations and schema modification using `DROP COLUMN`.
    
- **`04_Employees_Table_Schema_Changes.sql`**: Demonstrates adding new columns (`ALTER TABLE`) and populating them with data for existing records.
    
- **`05_Interests_Data_Handling.sql`**: Explores handling of `NULL` values during `INSERT` and using `DELETE` with conditions.
    

#### Module 2: Advanced Filtering & Queries

- **`06_Basic_Filtering_by_Age_and_Name.sql`**: Introduces `WHERE` clauses for filtering records based on age and name patterns (`LIKE`).
    
- **`07_Advanced_Filtering_with_Operators.sql`**: Uses a wider range of comparison operators, including filtering by a list of IDs (`IN`).
    
- **`08_Filtering_with_LIKE_and_NOT.sql`**: Practices using the `LIKE`, `NOT LIKE`, and `IS NOT NULL` operators to filter employee data.
    
- **`09_Data_Updates_and_Queries.sql`**: Combines data updates (`ALTER COLUMN`) with various filtering techniques.
    
- **`10_Distinct_Values_and_NULL_Handling.sql`**: Focuses on querying unique values (`DISTINCT`) and handling `NULL` values in conditions.
    

#### Module 3: Aggregate, Scalar, and Date Functions

- **`11_Aggregate_Functions_Practice.sql`**: A comprehensive exercise using `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`, and `GROUP BY` to analyze a dataset.
    
- **`12_Scalar_and_Numeric_Functions.sql`**: Practices using basic numeric functions like `ROUND` and `ABS`.
    
- **`13_String_Manipulation_Functions.sql`**: Explores common string functions such as `CONCAT`, `UPPER`, `LOWER`, `LENGTH`, and `SUBSTRING`.
    
- **`14_Date_and_Time_Functions.sql`**: Focuses on manipulating and extracting information from date values (year, month, day, week, etc.).
    

#### Module 4: Working with Multiple Tables

- **`15_Advanced_Joins_and_Views.sql`**: An in-depth assignment covering various `JOIN` types (`INNER`, `LEFT`, `RIGHT`, `CROSS`), `UNION`, and creating temporary views with `WITH` (Common Table Expressions).
    

#### Final Project

- **`16_Final_Project_Clothing_Store_DB.sql`**: A capstone project involving the design and creation of a relational database for a clothing store. The project includes:
    
    - Designing a schema with four interconnected tables (Producers, Products, Orders, Customers).
        
    - Establishing relationships using Foreign Keys.
        
    - Populating the database with sample data.
        
    - Writing a series of analytical queries to derive business insights, such as calculating average prices, identifying best-selling products, and finding the busiest sales day.
