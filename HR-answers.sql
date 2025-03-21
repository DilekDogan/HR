/*1-Write an SQL query to retrieve the name, phone number, email, and department ID of employees
 working in the Marketing department. */

select concat(first_name , ' ',last_name) as name,
		phone_number,
		email,
		e.department_id
 from employees as e
where e.department_id in (
	select d.department_id 
	 from departments as d
	where department_name='Marketing'
)





/*2-Write an SQL query to retrieve the first name, last name, phone number, email, and department 
ID of employees in department number 5.*/

select concat(first_name, ' ',last_name),
		phone_number,
		email,
		department_id

from employees
where department_id=5



/*3-Write an SQL query to extract the first three digits of employees' phone numbers.*/

select distinct( phone_number) from employees as distinct_gsm


select concat (first_name,' ', last_name),
	case when (left(phone_number,3)) = '515' then '515 Op'
		 when (left(phone_number,3)) = '590' then '590 Op'
		 when (left(phone_number,3)) = '603' then '603 Op'
		 when (left(phone_number,3)) = '650' then '650 Op'
		 else 'Other Op'
		 end as gsm_segment
from employees



/*4-Write an SQL query to concatenate the first and last names with a space in between.*/

select concat(first_name,' ',last_name) as name
from employees








