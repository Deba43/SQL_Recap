select first_name, length(first_name)
from employee_demographics
order by 2;

select first_name, upper(first_name)
from employee_demographics;

select first_name, lower(first_name)
from employee_demographics;

select first_name, left(first_name, 2)
from employee_demographics;

select birth_date, substring(birth_date, 6, 2) as birth_year
from employee_demographics;

select replace(first_name, 'a', 'z')
from employee_demographics;

select locate('an', first_name)
from employee_demographics;

select first_name, last_name, concat(first_name, ' ' , last_name) as full_name
from employee_demographics;

select locate('a', 'Debadatta');

select trim(' Deba ');
select ltrim(' Deba datta ');
select rtrim('Deba datta ');