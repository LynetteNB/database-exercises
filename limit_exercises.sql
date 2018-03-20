USE employees;
# List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;
# Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql. Update it to find just the first 5 employees.
SELECT first_name, last_name, birth_date, hire_date FROM employees WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%' ORDER BY birth_date, hire_date DESC LIMIT 5;
# Update the query to find the tenth page of results. The employee names should be:
SELECT first_name, last_name, birth_date, hire_date FROM employees WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%' ORDER BY birth_date, hire_date DESC LIMIT 5 OFFSET 45;