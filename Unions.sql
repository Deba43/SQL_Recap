SELECT first_name, last_name
FROM employee_demographics
union 
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name
FROM employee_demographics
union distinct
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name
FROM employee_demographics
union all
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name, 'Old Lady' as Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
union
SELECT first_name, last_name, 'Old Man' as Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
union
SELECT first_name, last_name, 'Highly Paid Employee'
FROM employee_salary
WHERE salary >= 75000
order by first_name;