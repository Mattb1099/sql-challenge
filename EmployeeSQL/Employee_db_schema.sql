-- Drop table if exists
DROP TABLE IF EXISTS departments;

DROP TABLE IF EXISTS dept_emp;

DROP TABLE IF EXISTS dept_manager;

DROP TABLE IF EXISTS employees;

DROP TABLE IF EXISTS salaries;

DROP TABLE IF EXISTS titles;

-- Create the names table
CREATE TABLE departments (
	dept_no Varchar PRIMARY KEY,
	dept_name Varchar
);

-- Check data import
SELECT *
FROM departments;


-- Create the names table
CREATE TABLE titles (
	title_id Varchar PRIMARY KEY,
	titles Varchar 
);

-- Check data import
SELECT *
FROM titles;


-- Create the names table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title Varchar,
	birth_date DATE,
	first_name Varchar,
	last_name Varchar,
	sex Varchar,
	hire_date DATE,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

-- Check data import
SELECT *
FROM employees;

-- Create the names table
CREATE TABLE salaries ( 
	emp_no INT ,
	salary INT ,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Check data import
SELECT *
FROM salaries;



-- Create the names table
CREATE TABLE dept_manager (
	dept_no Varchar,
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

-- Check data import
SELECT *
FROM dept_manager;

-- Create the names table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no Varchar,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	
);

-- Check data import
SELECT *
FROM dept_emp;



