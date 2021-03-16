select * from dep_emp;
select * from departments;
select * from dept_managers;
select * from employees;
select * from salaries;
select * from titles;

-- 1.List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary from employees
	inner join salaries on employees.emp_no = salaries.emp_no order by emp_no;

-- 2.List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date from employees
where hire_date between '1986-01-01' and '1986-12-31' order by hire_date;

-- 3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name from departments d
	inner join dept_managers dm on d.dept_no = dm.dept_no
	inner join employees e on dm.emp_no = e.emp_no order by emp_no;

-- 4.List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees e
	inner join dep_emp de on de.emp_no=e.emp_no
	inner join departments d on d.dept_no=de.dept_no order by emp_no;

-- 5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex from employees
where first_name = 'Hercules' and last_name like 'B%';
-- 6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name from employees e
	inner join dep_emp de on de.emp_no=e.emp_no
	inner join departments d on d.dept_no=de.dept_no
where dept_name='Sales'order by emp_no;
-- 7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- 8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.