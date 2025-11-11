select * from employee_demographics
where employee_id in (select employee_id from employee_salary where dept_id = 1);

select employee_id from employee_salary where dept_id = 1;

select first_name, salary,
(select avg(salary) from employee_salary) as avg_salary
from employee_salary;

select gender, avg(Min_age)
from (select gender, min(age) Min_age, max(age) Max_age, count(age) Count_age, avg(age) Avg_age from employee_demographics
group by gender) as Agg_Table group by gender;

select gender, min(age) Min_age, max(age) Max_age, count(age) Count_age, avg(age) Avg_age from employee_demographics
group by gender;