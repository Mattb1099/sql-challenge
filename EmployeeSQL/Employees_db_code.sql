--Selects the querys froom the schema
SELECT * FROM departments;

SELECT * FROM titles;

SELECT * FROM employees;

SELECT * FROM salaries;

SELECT * FROM dept_manager;

SELECT * FROM dept_emp;

--Create the new  table lists through an inner join
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees
Inner Join salaries on 
salaries.emp_no=employees.emp_no;

--Create table that filters data based on the date
SELECT employees.first_name, employees.last_name, employees.hire_date
From employees
WHERE hire_date Between '1/1/1986' AND '12/31/1986';

--Create the new  table lists through an multiple inner join
SELECT departments.dept_name, dept_manager.dept_no, dept_manager.emp_no, employees.first_name, employees.last_name
FROM departments
Inner Join dept_manager on 
dept_manager.dept_no=departments.dept_no
Inner Join employees on
dept_manager.emp_no=employees.emp_no;

--Create the new  table lists through an multiple inner join
SELECT dept_manager.dept_no, dept_manager.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_manager
Inner Join employees on
dept_manager.emp_no=employees.emp_no
Inner Join departments on 
departments.dept_no=dept_manager.dept_no;

--Create table that filters data based on the date
SELECT employees.first_name, employees.last_name, employees.sex
From employees
WHERE first_name = 'Hercules' 
And Left(last_name, 1) = 'B';

--Create table that filters data based on the date
SELECT employees.emp_no, employees.first_name, employees.last_name
From employees
Inner Join dept_emp on
employees.emp_no=dept_emp.emp_no
Inner Join departments on
dept_emp.dept_no=departments.dept_no
WHERE dept_name = 'Sales'; 

--Create table that filters data based on the date
SELECT employees.emp_no, employees.first_name, employees.last_name
From employees
Inner Join dept_emp on
employees.emp_no=dept_emp.emp_no
Inner Join departments on
dept_emp.dept_no=departments.dept_no
WHERE dept_name = 'Sales' 
And dept_name = 'Development'; 

--Create table that filters data based on the date
SELECT employees.last_name, COUNT(last_name) AS Frequency
FROM employees
GROUP BY last_name;
--SELECT employees.last_name
--Count(last_name)AS Frequency
--From employees
--Group By last_name
--Order By
--COUNT(last_name) DESC;