README: PL/SQL Monthly Sales Summary Generator
Date: August 19, 2025

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

Efficient Data Handling (MERGE Statement): The MERGE command is used to efficiently perform an "upsert" (UPDATE or INSERT) operation, which avoids the need for separate IF-THEN-ELSE logic for existing and new summary records.

Robust Error Handling: The EXCEPTION block is structured to handle specific errors (like NO_DATA_FOUND) as well as any other unexpected issues, ensuring data integrity with ROLLBACK.

Schema Design & DDL: Correctly designed tables with appropriate data types, primary keys, and unique constraints (uq_region_month) to ensure data quality.

Transactional Control: Proper use of COMMIT and ROLLBACK to manage data transactions safely.

How to Run the Script
Open the .sql file in an Oracle database client tool (like SQL Developer or SQL*Plus).

Ensure you are connected to an Oracle database schema with privileges to create tables and procedures.

Run the entire script.

Observe the output from the "Execution Example" section, which will be displayed in the script output panel (ensure SERVEROUTPUT is on).

The final SELECT query will display the contents of the monthly_sales_summary table as the final result.