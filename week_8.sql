SELECT title AS 'Title Names', COUNT(*) AS 'Number of Employees' 
FROM titles 
INNER JOIN employees ON employees.emp_no = titles.emp_no 
WHERE birth_date > ('1965-01-01') 
GROUP BY title 
ORDER BY title;

SELECT title AS 'Title Names', 
AVG(salaries.salary) AS 'Average Salary' 
FROM titles 
INNER JOIN salaries ON salaries.emp_no = titles.emp_no 
GROUP BY title 
ORDER BY title;

SELECT departments.dept_name AS "Department Name", SUM(salaries.salary) AS " Salary Spent (Between 1990 and 1992)"
FROM salaries
INNER JOIN dept_emp ON dept_emp.emp_no = salaries.emp_no 
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no 
WHERE dept_name = "Marketing" AND dept_emp.from_date >= '1990-01-01' AND dept_emp.to_date <= '1992-12-31'
GROUP BY departments.dept_name;