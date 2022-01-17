-- Database: PH-EmployeeDB

-- DROP DATABASE IF EXISTS "PH-EmployeeDB";

CREATE DATABASE "PH-EmployeeDB"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
-- STEP1-STEP7 Module 7 Challenge.
--Code below works
SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-10' and '1955-12-31')
ORDER BY emp_no;

TABLE retirement_titles

--STEP 8-15
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (retirement_titles.emp_no) retirement_titles.emp_no,
retirement_titles.first_name,
retirement_titles.last_name,
retirement_titles.title,
retirement_titles.to_date
INTO unique_titles
FROM retirement_titles
WHERE retirement_titles.to_date = '9999-01-01'

ORDER BY emp_no, to_date DESC;

TABLE unique_titles

--STEP 16-21. END DELIVERABLE 1

SELECT 
   COUNT(title), 
   title
INTO retiring_titles
FROM 
   unique_titles
GROUP BY title
ORDER BY unique_titles.count DESC;

TABLE retiring_titles


--STEP 1 of DELIVERABLE 2

SELECT DISTINCT ON (employees.emp_no) employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.birth_date,
	dept_emp.from_date,
	dept_emp.to_date,
	titles.title
INTO mentorship_eligibility
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (dept_emp.to_date = '01-01-9999') and (employees.birth_date BETWEEN '1965-01-01' and '1965-12-31')
ORDER BY employees.emp_no ASC;

TABLE mentorship_eligibility

