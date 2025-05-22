CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    dept_id INT
);

CREATE TABLE depertments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
)

INSERT INTO
    employees (emp_id, name, dept_id)
VALUES (1, 'Alice', 1);

INSERT INTO
    employees (emp_id, name, dept_id)
VALUES (3, 'John', 1),
    (4, 'Bob', 2);

INSERT INTO
    depertments (dept_id, dept_name)
VALUES (1, 'HR'),
    (2, 'Finance');

SELECT * FROM employees;

SELECT * FROM depertments;

SELECT e.emp_id, name, d.dept_id, d.dept_name
FROM employees e
    INNER JOIN depertments d ON e.dept_id = d.dept_id;

INSERT INTO
    depertments (dept_id, dept_name)
VALUES (3, 'IT'),
    (4, 'Marketing');

INSERT INTO
    employees (emp_id, name, dept_id)
VALUES (7, 'Charlie', 3),
    (8, 'David', 4),
    (9, 'Eve', 2),
    (10, 'Frank', 4);

INSERT INTO
    depertments (dept_id, dept_name)
VALUES (5, 'Sales'),
    (6, 'Support');

SELECT * FROM employees;

SELECT * FROM depertments;

SELECT e.emp_id, name, e.dept_id, d.dept_name
FROM employees e
    LEFT OUTER JOIN depertments d ON e.dept_id = d.dept_id;

INSERT INTO
    employees (emp_id, name, dept_id)
VALUES (11, 'Grace', NULL),
    (12, 'Heidi', 6),
    (13, 'Ivan', NULL),
    (14, 'Judy', 8);

SELECT * FROM employees;

SELECT * FROM depertments;

SELECT e.emp_id, name, e.dept_id, d.dept_name
FROM employees e
    FULL OUTER JOIN depertments d ON e.dept_id = d.dept_id;

SELECT e.emp_id, name, e.dept_id, d.dept_name
FROM employees e
    LEFT OUTER JOIN depertments d ON e.emp_id = d.dept_id