SELECT * FROM employees;

SELECT * FROM depertments;

SELECT e.emp_id, e.name, e.dept_id, d.dept_name
FROM employees e
    LEFT JOIN depertments d ON e.dept_id = d.dept_id;

SELECT e.emp_id, e.name, e.dept_id, d.dept_name
FROM employees e
    RIGHT JOIN depertments d ON e.emp_id = d.dept_id;

-- Cross Join --

SELECT * FROM employees CROSS JOIN depertments;


--Natural Join--
SELECT * FROM employees NATURAL JOIN depertments;