SELECT * FROM employee_salary WHERE salary >= 70000;
SELECT * FROM employee_demographics WHERE gender = 'Female';
SELECT * FROM employee_demographics WHERE gender != 'Female';
SELECT * FROM employee_demographics WHERE birth_date >= '1980-01-01';

SELECT * FROM employee_demographics WHERE first_name LIKE 'a%';
SELECT * FROM employee_demographics WHERE first_name LIKE '%a';
SELECT * FROM employee_demographics WHERE first_name LIKE 'a__';
SELECT * FROM employee_demographics WHERE first_name LIKE 'a___';