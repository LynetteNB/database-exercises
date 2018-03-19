USE employees;
# Employees with first names Irena, Vidya, or Maya who is also Male
# Can also use IN: SELECT first_name, gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
SELECT first_name, gender FROM employees WHERE (first_name ='Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender = 'M';
# Employees whose last name starts with E
SELECT last_name FROM employees WHERE last_name LIKE 'E%';
# Employees hired in the 90s
SELECT hire_date FROM employees WHERE hire_date LIKE '199%';
# Employees born on Christmas
SELECT birth_date FROM employees WHERE birth_date LIKE '%12-25';
# Employees with a q in their last name
SELECT last_name FROM employees WHERE last_name LIKE '%q%';
# Employees whose last name starts or ends with E
SELECT last_name FROM employees WHERE last_name LIKE '%e' or last_name LIKE 'e%';
# Employees whose last name starts AND ends with E
SELECT last_name FROM employees WHERE last_name LIKE '%e' and last_name LIKE 'e%';
# Employees hired in the 90s and born on Christmas
SELECT hire_date, birth_date FROM employees WHERE hire_date LIKE '199%' and birth_date LIKE '%12-25';
# Employees with a q in their last name but not qu
SELECT last_name FROM employees WHERE last_name LIKE '%q%' and last_name NOT LIKE '%qu%';