-- list employee number, last name, first name, sex, salary
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s
on e.emp_no = s.emp_no

-- list first name, last name, and hire date for employees hired in 1986
select first_name, last_name, hire_date
from employees
where hire_date BETWEEN '1986-1-1' and '1986-12-31'
order by hire_date asc;

-- manager of each department, department number, department name, employee number, last name, first name
select dm.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name 
from dept_manager dm
join department d
on dm.dept_no = d.dept_no
join employees e
on dm.emp_no = e.emp_no

-- list department number, employee name, last name, first name and department name
select de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
join employees e
on de.emp_no = e.emp_no
join department d
on de.dept_no = d.dept_no

-- list first name, last name, sex whose first name is Hercules and last name starts with B
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

--list each employee in sales department, employee number, last name, first name
select e.emp_no, e.last_name, e.first_name
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join department d
on de.dept_no = d.dept_no
where dept_name = 'Sales'

--list each employee in the Sales and Development departments, employee number, last name, first name and department name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join department d
on de.dept_no = d.dept_no
where dept_name ='Sales' OR dept_name = 'Development'

--list frequency count of last name
select last_name, count(last_name) as last_count
from employees
group by last_name
order by last_count desc