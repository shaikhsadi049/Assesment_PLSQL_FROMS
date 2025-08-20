Oracle Forms & PL/SQL Practical Test Solutions
Date: August 19, 2025

This repository contains the solutions for a hands-on technical test demonstrating proficiency in building functional data management applications using Oracle Forms and PL/SQL.

Project 1: Employee Management Form (Oracle Forms & PL/SQL)
Project Overview
This project is a hands-on technical test demonstrating proficiency in building a functional data management application using Oracle Forms and PL/SQL. The form allows users to dynamically search, view, and update employee records.

Technologies Used
Frontend: Oracle Forms Developer 11g

Backend & Logic: Oracle PL/SQL, SQL

Database: Oracle Database

Project Files
schema_setup.sql

Contains the CREATE TABLE scripts for EMPLOYEES and DEPARTMENTS.

Includes all necessary constraints (Primary Key, Foreign Key).

Populates the tables with sample data for testing.

employee.fmb

The Oracle Forms source file for the main application.

Features a two-block design (search and data entry).

Contains all PL/SQL logic in triggers and program units for search, validation, and UI control.

Key Features & Skills Demonstrated
Dynamic Search: Implemented a robust search feature using WHEN-BUTTON-PRESSED triggers and PL/SQL.

Data Validation: Handled null inputs and incorrect data types before processing.

UI Control: Programmatically enabled and disabled form fields based on the application's state using SET_ITEM_PROPERTY.

Robust Error Handling: Used EXCEPTION blocks to manage "no data found" scenarios and other potential errors gracefully.

How to Run
Connect to your Oracle database and run the schema_setup.sql script to create and populate the necessary tables.

Open the employee.fmb file in Oracle Forms Builder.

Compile the form (Ctrl+T).

Run the form (Ctrl+R) to open it in the runtime environment.

Project 2: PL/SQL Monthly Sales Summary Generator
Project Overview
This project consists of a powerful PL/SQL script designed to automatically process individual sales records and generate an aggregated monthly sales summary. The script demonstrates an end-to-end database process, including schema creation, sample data population, and the execution of a highly optimized procedure to perform the data aggregation.

The core of the project is the generate_monthly_sales_summary procedure, which is built for high performance and efficiency.

Technologies Used
Primary Technology: Oracle PL/SQL, SQL

Database: Oracle Database (12c or later recommended for full feature support)

File Description: sales_summary_generator.sql
This single SQL file contains the entire project, logically divided into five sections:

Schema Setup: Creates the sales (for raw data) and monthly_sales_summary (for results) tables with appropriate constraints.

Sample Data: Inserts sample sales records across several months for testing purposes.

PL/SQL Procedure: The main procedure, generate_monthly_sales_summary, which contains the core business logic.

Execution Example: An anonymous PL/SQL block that demonstrates how to run the procedure for different months.

Verification Query: A final SELECT statement to view the results stored in the summary table.

Key Features & Skills Demonstrated
Advanced PL/SQL Programming: A well-structured, parameterized procedure that encapsulates complex business logic.

Performance Optimization:

BULK COLLECT: Used to fetch all aggregated sales data from the SQL engine into PL/SQL collections in a single operation, drastically reducing context switching.

FORALL: Used to execute the MERGE statement in a bulk operation, sending all data back to the SQL engine at once for maximum performance.

Efficient Data Handling (MERGE Statement): The MERGE command is used to efficiently perform an "upsert" (UPDATE or INSERT) operation.

Robust Error Handling: The EXCEPTION block is structured to handle specific errors and any other unexpected issues, ensuring data integrity with ROLLBACK.

Schema Design & DDL: Correctly designed tables with appropriate data types, primary keys, and unique constraints.

Transactional Control: Proper use of COMMIT and ROLLBACK to manage data transactions safely.

How to Run the Script
Open the sales_summary_generator.sql file in an Oracle database client tool (like SQL Developer or SQL*Plus).

Ensure you are connected to an Oracle database schema with privileges to create tables and procedures.

Run the entire script.

Observe the output from the "Execution Example" section, which will be displayed in the script output panel (ensure SERVEROUTPUT is on).

The final SELECT query will display the contents of the monthly_sales_summary table as the final result.
