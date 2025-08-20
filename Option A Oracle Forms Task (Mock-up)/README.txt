Employee Management Form (Oracle Forms & PL/SQL)
Date: August 19, 2025

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