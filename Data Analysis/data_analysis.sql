--List the following details of each employee: 
--employee number, last name, first name, sex, and salary
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries as s
on e.emp_no = s.emp_no;

--List first name, last name, and hire date 
--for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where extract(year from hire_date)=1986;

--List the manager of each department with the following information: 
--department number, department name, 
--the manager's employee number, last name, first name.
select departments.dept_no, departments.dept_name, 
dept_manager.emp_no, employees.last_name, employees.first_name
from employees
join dept_manager on
dept_manager.emp_no=employees.emp_no
join departments on
departments.dept_no=dept_manager.dept_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on
employees.emp_no=dept_emp.emp_no
join departments on
departments.dept_no=dept_emp.dept_no;


--List first name, last name, and sex for employees 
--whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name like 'Hercules' and last_name like 'B%';


--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on
employees.emp_no=dept_emp.emp_no
join departments on
departments.dept_no=dept_emp.dept_no
where dept_name like 'Sales';


--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on
employees.emp_no=dept_emp.emp_no
join departments on
departments.dept_no=dept_emp.dept_no
where dept_name like 'Sales' or dept_name like 'Development';


--In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.
select last_name, count(last_name) as "Last name frequency"
from employees
group by last_name
order by "Last name frequency" desc;





