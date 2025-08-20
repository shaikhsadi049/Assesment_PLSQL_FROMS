/* Formatted on 8/19/2025 4:53:56 PM (QP5 v5.422) */
/********************************************************************************
** Schema Setup Script
** Description: Creates the DEPARTMENTS and EMPLOYEES tables, along with 
** sequences, constraints, and initial sample data.
** Author:       Shaikh Sadi
** Date:        August 19, 2025
********************************************************************************/


/********************************************************************************
** Section 1: DEPARTMENTS Table Setup
********************************************************************************/

-- Clean up by dropping the table if it already exists
DROP TABLE departments PURGE;

-- Create the DEPARTMENTS table to store department information

CREATE TABLE departments
(
    department_id      NUMBER (4) PRIMARY KEY,
    department_name    VARCHAR2 (30) NOT NULL
);

-- Insert sample data into the DEPARTMENTS table

INSERT INTO departments (department_id, department_name)
     VALUES (10, 'Administration');

INSERT INTO departments (department_id, department_name)
     VALUES (20, 'Marketing');

INSERT INTO departments (department_id, department_name)
     VALUES (50, 'Shipping');

INSERT INTO departments (department_id, department_name)
     VALUES (80, 'Sales');

-- Commit the transaction to save department data
COMMIT;


/********************************************************************************
** Section 2: EMPLOYEES Table Setup
********************************************************************************/

-- Create a sequence for generating new employee IDs automatically

CREATE SEQUENCE employees_seq START WITH 207 INCREMENT BY 1;

-- Clean up by dropping the employees table if it already exists, cascading constraints
DROP TABLE EMPLOYEES CASCADE CONSTRAINTS;

-- Create the EMPLOYEES table to store employee details

CREATE TABLE EMPLOYEES
(
    EMPLOYEE_ID      NUMBER (6),
    FIRST_NAME       VARCHAR2 (20 BYTE),
    LAST_NAME        VARCHAR2 (25 BYTE) NOT NULL,
    EMAIL            VARCHAR2 (25 BYTE) NOT NULL,
    PHONE_NUMBER     VARCHAR2 (20 BYTE),
    HIRE_DATE        DATE NOT NULL,
    SALARY           NUMBER (8, 2) NOT NULL,
    DEPARTMENT_ID    NUMBER (4),
    LAST_UPDATED     DATE
)
-- Physical storage properties for the table
TABLESPACE EHL_APX
PCTUSED 0
PCTFREE 10
INITRANS 1
MAXTRANS 255
STORAGE (INITIAL 64 K
         NEXT 1 M
         MINEXTENTS 1
         MAXEXTENTS UNLIMITED
         PCTINCREASE 0
         BUFFER_POOL DEFAULT)
LOGGING
NOCOMPRESS
NOCACHE;

-- Add Primary Key and Unique constraints to the EMPLOYEES table

ALTER TABLE EMPLOYEES
    ADD (-- Define the Primary Key constraint on EMPLOYEE_ID
         PRIMARY KEY
             (EMPLOYEE_ID)
             USING INDEX
                 TABLESPACE EHL_APX
                 PCTFREE 10
                 INITRANS 2
                 MAXTRANS 255
                 STORAGE (INITIAL 64 K
                          NEXT 1 M
                          MINEXTENTS 1
                          MAXEXTENTS UNLIMITED
                          PCTINCREASE 0
                          BUFFER_POOL DEFAULT)
             ENABLE
             VALIDATE,
         -- Define a Unique constraint on the EMAIL column
         UNIQUE
             (EMAIL)
             USING INDEX
                 TABLESPACE EHL_APX
                 PCTFREE 10
                 INITRANS 2
                 MAXTRANS 255
                 STORAGE (INITIAL 64 K
                          NEXT 1 M
                          MINEXTENTS 1
                          MAXEXTENTS UNLIMITED
                          PCTINCREASE 0
                          BUFFER_POOL DEFAULT)
             ENABLE
             VALIDATE);

-- Add a Foreign Key constraint to link EMPLOYEES with DEPARTMENTS

ALTER TABLE EMPLOYEES
    ADD (
        CONSTRAINT FK_DEPT FOREIGN KEY (DEPARTMENT_ID)
            REFERENCES DEPARTMENTS (DEPARTMENT_ID)
            ENABLE VALIDATE);


/********************************************************************************
** Section 3: Sample Data for EMPLOYEES Table
********************************************************************************/

-- Turn off substitution variable checking for '&' character
SET DEFINE OFF;

-- Insert sample employee records

INSERT INTO EMPLOYEES (EMPLOYEE_ID,
                       FIRST_NAME,
                       LAST_NAME,
                       EMAIL,
                       HIRE_DATE,
                       SALARY,
                       DEPARTMENT_ID,
                       LAST_UPDATED)
     VALUES (211,
             'Shaikh',
             'Sadi',
             'sadi@gmail.com',
             TO_DATE ('01/01/2025', 'MM/DD/YYYY'),
             15000,
             10,
             TO_DATE ('08/19/2025', 'MM/DD/YYYY'));

INSERT INTO EMPLOYEES (EMPLOYEE_ID,
                       FIRST_NAME,
                       LAST_NAME,
                       EMAIL,
                       HIRE_DATE,
                       SALARY,
                       DEPARTMENT_ID)
     VALUES (212,
             'Nayim',
             'Akhter',
             'nayim@gmail.com',
             TO_DATE ('01/01/2025', 'MM/DD/YYYY'),
             10000,
             20);

INSERT INTO EMPLOYEES (EMPLOYEE_ID,
                       FIRST_NAME,
                       LAST_NAME,
                       EMAIL,
                       PHONE_NUMBER,
                       HIRE_DATE,
                       SALARY,
                       DEPARTMENT_ID)
     VALUES (215,
             'Spouse',
             'Spp',
             'spp@gmail.com',
             '01915002141',
             TO_DATE ('01/01/2024', 'MM/DD/YYYY'),
             12000,
             20);

INSERT INTO EMPLOYEES (EMPLOYEE_ID,
                       FIRST_NAME,
                       LAST_NAME,
                       EMAIL,
                       PHONE_NUMBER,
                       HIRE_DATE,
                       SALARY,
                       DEPARTMENT_ID)
     VALUES (229,
             'Baten',
             'Mia',
             'baten.mia@gmail.com',
             '921548653486',
             TO_DATE ('01/10/2025', 'MM/DD/YYYY'),
             18200,
             10);

INSERT INTO EMPLOYEES (EMPLOYEE_ID,
                       FIRST_NAME,
                       LAST_NAME,
                       EMAIL,
                       PHONE_NUMBER,
                       HIRE_DATE,
                       SALARY,
                       DEPARTMENT_ID)
     VALUES (230,
             'Juganntor',
             'vose',
             'jugv@hotmail.com',
             '952685235',
             TO_DATE ('01/25/2025', 'MM/DD/YYYY'),
             158265,
             10);

-- Commit the transaction to save employee data
COMMIT;

/********************************************************************************
** End of Script
********************************************************************************/