USE employees;
# Return 10 employees in a result set named 'full_name' in the format of 'lastname, firstname' for each employee.
# Add the date of birth for each employee as 'DOB' to the query.
# Update the query to format full name to include the employee number so it is formatted as 'employee number - lastname, firstname'.
SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name, birth_date AS DOB FROM employees LIMIT 10;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE departments;
DESCRIBE titles;

USE codeup_test_db;
ALTER TABLE albums ADD UNIQUE (name, artist);
SELECT * FROM albums;
INSERT INTO albums (name, artist, release_date, sales, genre) VALUES ('Thriller', 'Michael Jackson', 1982, 47.30, 'Pop, Rock, R&B');