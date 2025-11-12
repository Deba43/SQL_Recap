with CTE_Example as
(
SELECT gender, SUM(salary), MIN(salary), MAX(salary), COUNT(salary), AVG(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) select * from CTE_Example;

with CTE_Example as
(
select gender, sum(salary), max(salary), min(salary), count(salary)
from employee_demographics dem
join employee_salary sal 
on dem.employee_id = sal.employee_id
group by gender
)
select gender, round(avg(`sum(salary)`/`count(salary)`), 2) as avg_salary
from CTE_Example
group by gender;

with cte_1 as
(
SELECT employee_id, gender, birth_date
FROM employee_demographics dem
WHERE birth_date > '1985-01-01'
),
 cte_2 as
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary >= 50000
)
select * from cte_1 cte1
left join cte_2 cte2
on cte1.employee_id = cte2.employee_id;