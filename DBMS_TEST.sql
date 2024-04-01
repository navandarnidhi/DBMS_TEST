create database test;
use test;


# Que1
create table students(
s_id int(5) primary key,
s_name varchar(45) not null unique,
age int(2) not null
);

#Q2
insert into students values(
(1, 'nidhi', 23),
(2, 'sandali', 27),
(3, 'arjita', 31)
);

select * from students;

use hr2;

#Q3
select * from employees;
select * from departments;
select e.employee_id,d.department_name from departments d inner join employees e on d.department_id=e.department_id
where d.department_name = "%d";

#Q4
select * from employees;
select * from departments;

select e.employee_id, e.salary, d.department_id from employees e inner join departments d 
on e.department_id = d.department_id = (select max(salary) limit 3);

#Q5 
select * from departments;
select * from employees;

select concat(first_name, ' ', last_name) as full_name ,e.employee_id,e.salary from employees e
where e.salary > (
    select avg(e2.salary)
    from employees e2
    where e2.department_id = e.department_id
);


#Q6 

select * from employees;
select * from departments;
select * from locations;

select e.employee_id, d.department_id,e.hire_date from employees e inner join departments d 
on e.department_id = d.department_id;
select d.department_id, l.location_id from departments d inner join locations l
on d.location_id = l.location_id;
select hire_date, employee_id from employees where current_date()-hire_date > 5;



/*
1. mongosh
2. show dbs
3. use resturant;
4. db.createCollections("resturant");
5. db.resturant.find({borough:'Manhattan'});   --- QUE 1 ---
6. db.resturant.aggregate({$sort: {name: 1}});  --- QUE 2 ---
7. db.resturant.find( { grade: { $elemMatch: { $eq: 'A'} } } );  --- QUE 3 ---
*/