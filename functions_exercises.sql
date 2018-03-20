USE employees;
SELECT first_name, last_name, gender FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya') ORDER BY  last_name DESC, first_name DESC;
SELECT last_name FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;
# Employees hired in the 90s
SELECT hire_date FROM employees WHERE hire_date LIKE '199%';
# Employees born on Christmas
SELECT birth_date FROM employees WHERE birth_date LIKE '%12-25';
# Employees with a q in their last name
SELECT last_name FROM employees WHERE last_name LIKE '%q%';
# Employees whose last name starts or ends with E
SELECT last_name FROM employees WHERE last_name LIKE '%e' or last_name LIKE 'e%' ORDER BY emp_no;
# Employees whose last name starts AND ends with E
SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE '%e' and last_name LIKE 'e%' ORDER BY emp_no;
# Employees hired in the 90s and born on Christmas
SELECT first_name, last_name, hire_date, birth_date FROM employees WHERE hire_date LIKE '199%' and birth_date LIKE '%12-25' ORDER BY birth_date, hire_date DESC;
SELECT CONCAT(DATEDIFF(CURDATE(), hire_date) DIV 365, ' years ', DATEDIFF(CURDATE(), hire_date) % 365, ' days'), hire_date FROM employees WHERE hire_date LIKE '199%' and birth_date LIKE '%12-25' ORDER BY birth_date, hire_date DESC;
# Employees with a q in their last name but not qu
SELECT last_name FROM employees WHERE last_name LIKE '%q%' and last_name NOT LIKE '%qu%';