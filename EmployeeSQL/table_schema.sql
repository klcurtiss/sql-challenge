-- creating tables

drop table Employees
create table Employees (
	emp_no int,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	primary key (emp_no));
	
	select * from Employees

drop table salaries
create table salaries (
	emp_no int,
	salary int,
	foreign key (emp_no) references employees(emp_no));
	
	select * from salaries

drop table titles
Create table titles (
	title_id varchar,
	title varchar);
	
	Select * from titles
	
drop table Departments
create table Departments(
	dept_no varchar,
	dept_name varchar,
	primary key (dept_no));
	
	select * from Departments

drop table dept_manager
create table dept_manager (
	dept_no varchar,
	emp_no int,
	foreign key (emp_no) references employees(emp_no),
	foreign Key (dept_no) references departments(dept_no));

	select * from dept_manager

drop table dept_emp
create table dept_emp (
	emp_no int,
	dept_no varchar,
	foreign key (emp_no) references employees(emp_no),
	foreign Key (dept_no) references departments(dept_no));

	select * from dept_emp

