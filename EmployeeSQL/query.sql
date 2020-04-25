--1. List the following details of each employee:
--employee number, last name, first name, gender, and salary.
SELECT * FROM "Employee";
SELECT * FROM "Salary";
SELECT "Employee".emp_no, last_name, first_name, gender, salary
FROM "Employee"
LEFT JOIN "Salary"
ON "Employee".emp_no = "Salary".emp_no; 

-- List employees who were hired in 1986.
Select * From "Employee" Where hire_date Between '1986-01-01' and '1986-12-31';

--List the manager of each department with the following information: department 
--number, department name, the manager's employee number, last name, first name, 
--and start and end employment dates.
Select * From "Employee";
Select * From "Dep_Mgr";
Select * From "Departments";

select "Dep_Mgr".dept_no,"Dep_Mgr".to_date, "Dep_Mgr".from_date, "Employee".emp_no, last_name, first_name,
 "Departments".dept_name
From "Dep_Mgr"
left join "Employee"
on "Employee".emp_no = "Dep_Mgr".emp_no

Left join "Departments"
on "Departments".dept_no = "Dep_Mgr".dept_no;

--. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

Select * From "Employee";
Select * From "Dep_Mgr";
Select * From "Departments";

select "Employee".emp_no, last_name, first_name, "Departments".dept_name
From "Dep_Mgr"
left join "Employee"
on "Employee".emp_no = "Dep_Mgr".emp_no

Left join "Departments"
on "Departments".dept_no = "Dep_Mgr".dept_no;



--5. List all employees whose first name is "Hercules" and last names begin with "B."
select * from "Employee" where first_name = 'Hercules' 
and last_name like 'B%' ; 


--6. List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
Select * From "Employee";
Select * From "Dep_Mgr";
Select * From "Departments";

select "Employee".emp_no, last_name, first_name, "Departments".dept_name
From "Dep_Mgr" 
left join "Employee"
on "Employee".emp_no = "Dep_Mgr".emp_no

Left join "Departments"
on "Departments".dept_no = "Dep_Mgr".dept_no
where "Departments".dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.
Select * From "Employee";
Select * From "Dep_Mgr";
Select * From "Departments";

select "Employee".emp_no, last_name, first_name, "Departments".dept_name
From "Dep_Mgr" 
left join "Employee"
on "Employee".emp_no = "Dep_Mgr".emp_no

Left join "Departments"
on "Departments".dept_no = "Dep_Mgr".dept_no
where "Departments".dept_name = 'Development';

--8. In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.

SELECT last_name,
COUNT(last_name) AS "frequency"
FROM "Employee"
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;


