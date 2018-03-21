USE employees;
# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments LEFT JOIN dept_manager ON departments.dept_no = dept_manager.dept_no JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE to_date LIKE '9999%' ORDER BY departments.dept_name;
# Department Name    | Department Manager
# --------------------+--------------------
# Customer Service   | Yuchang Weedman
# Development        | Leon DasSarma
# Finance            | Isamu Legleitner
# Human Resources    | Karsten Sigstam
# Marketing          | Vishwani Minakawa
# Production         | Oscar Ghazalie
# Quality Management | Dung Pesch
# Research           | Hilary Kambil
# Sales              | Hauke Zhang

# Find the name of all departments currently managed by women.
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments LEFT JOIN dept_manager ON departments.dept_no = dept_manager.dept_no JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE to_date LIKE '9999%' AND employees.gender = 'F' ORDER BY departments.dept_name;
# Department Name | Manager Name
# ----------------+-----------------
# Development     | Leon DasSarma
# Finance         | Isamu Legleitner
# Human Resources | Karsetn Sigstam
# Research        | Hilary Kambil

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS Title, COUNT(*) AS Count
FROM titles AS t JOIN dept_emp AS de ON t.emp_no = de.emp_no
WHERE de.to_date LIKE '9999%' AND t.to_date LIKE '9999%' AND de.dept_no = 'd009' GROUP BY t.title;
# Title              | Count
# -------------------+------
# Assistant Engineer |    68
# Engineer           |   627
# Manager            |     1
# Senior Engineer    |  1790
# Senior Staff       | 11268
# Staff              |  3574
# Technique Leader   |   241
# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS Name, s.salary AS Salary
FROM departments AS d JOIN dept_manager AS dm ON d.dept_no = dm.dept_no JOIN employees AS e ON e.emp_no = dm.emp_no JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE dm.to_date LIKE '9999%' AND s.to_date LIKE '9999%' ORDER BY d.dept_name;
# Department Name    | Name              | Salary
# -------------------+-------------------+-------
# Customer Service   | Yuchang Weedman   |  58745
# Development        | Leon DasSarma     |  74510
# Finance            | Isamu Legleitner  |  83457
# Human Resources    | Karsten Sigstam   |  65400
# Marketing          | Vishwani Minakawa | 106491
# Production         | Oscar Ghazalie    |  56654
# Quality Management | Dung Pesch        |  72876
# Research           | Hilary Kambil     |  79393
# Sales              | Hauke Zhang       | 101987

# Bonus Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(e2.first_name, ' ', e2.last_name) AS 'Manager Name'
FROM employees AS e
LEFT JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e2 ON dm.emp_no = e2.emp_no
WHERE de.to_date LIKE '9999%'
AND dm.to_date LIKE '9999%'
ORDER BY e.last_name;
#     240,124 Rows
#
#     Employee Name | Department Name  |  Manager Name
#     --------------|------------------|-----------------
#      Huan Lortz   | Customer Service | Yuchang Weedman
#
#      .....
-- Write a query to get the average salary current managers make by gender
-- M 79350.60
-- F 75690.00
SELECT e.gender, AVG(s.salary)
FROM employees AS e JOIN dept_manager AS dm ON e.emp_no = dm.emp_no JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE s.to_date LIKE '9999%' AND dm.to_date LIKE '9999%' GROUP BY e.gender;

-- Write a query to get the avg salary managers historically make by gender
-- M 72810.94
-- F 62037.21
SELECT e.gender, AVG(s.salary)
FROM employees AS e JOIN dept_manager AS dm ON e.emp_no = dm.emp_no JOIN salaries AS s on e.emp_no = s.emp_no
GROUP BY e.gender;

-- get avg salary for all current employees by gender
-- M 72044.66
-- F 71963.57
SELECT e.gender, AVG(s.salary)
FROM employees AS e JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE s.to_date LIKE '9999%' GROUP BY e.gender;

-- get avg historic salary for all employees by gender
-- M 63842.25
-- F 63750.17
SELECT e.gender, AVG(s.salary)
FROM employees AS e JOIN salaries AS s ON e.emp_no = s.emp_no JOIN dept_emp AS emp ON e.emp_no = emp.emp_no
GROUP BY e.gender;

SELECT COUNT(*) FROM employees;
SELECT COUNT(*) FROM dept_emp;