SELECT * FROM employee_demographics limit 5;

SELECT * FROM employee_demographics 
order by first_name
limit 5;

SELECT gender, avg(age) as AVG_AGE
FROM employee_demographics
group by gender;