create temporary table temp_table
(first_name varchar(50),
last_name varchar(50));

select * from temp_table;

insert into temp_table values('Deba', 'datta');

create temporary table sal_over_60k
select * from employee_salary
where salary > 60000;

select * from sal_over_60k;