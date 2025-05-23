CREATE TABLE workers (
    worker_id SERIAL PRIMARY KEY,
    worker_name VARCHAR(100) NOT NULL,
    room_id INT REFERENCES rooms (room_id),
    salary DECIMAL(10, 2) NOT NULL,
    hire_date DATE NOT NULL
)

CREATE TABLE rooms (
    room_id SERIAL PRIMARY KEY,
    room_name VARCHAR(100) NOT NULL
)

INSERT INTO
    rooms (room_name)
VALUES ('Room A'),
    ('Room B'),
    ('Room C');

INSERT INTO
    workers (
        worker_name,
        room_id,
        salary,
        hire_date
    )
VALUES (
        'Alice',
        1,
        50000.00,
        '2023-01-15'
    ),
    (
        'Bob',
        2,
        60000.00,
        '2023-02-20'
    ),
    (
        'Charlie',
        1,
        55000.00,
        '2023-03-10'
    ),
    (
        'David',
        3,
        70000.00,
        '2023-04-05'
    ),
    (
        'Eve',
        2,
        65000.00,
        '2023-05-25'
    );

SELECT * FROM workers;

SELECT * FROM rooms;

-- 1.Inner join to retrive Employee and Depertment Information ---
SELECT w.worker_id, w.worker_name, w.salary, r.room_name
FROM workers w
    INNER JOIN rooms r ON w.room_id = r.room_id;

--2. Show Depertment wise employee count ---
SELECT r.room_name, COUNT(w.worker_id) AS employee_count
FROM rooms r
    JOIN workers w ON r.room_id = w.room_id
GROUP BY
    r.room_name;

-- 3. Show room name with avarage salary ---
SELECT r.room_name, AVG(w.salary) AS Avarage_salary
FROM rooms r
    JOIN workers w ON r.room_id = w.room_id
GROUP BY
    r.room_name;

-- 4. Show room name with max salary ---
SELECT r.room_name, MAX(w.salary) AS max_salary
FROM rooms r
    JOIN workers w ON r.room_id = w.room_id
GROUP BY
    r.room_name;

-- 5. Show room name with min salary ---
SELECT r.room_name, MIN(w.salary) AS Minimum_salary
FROM rooms r
    JOIN workers w ON r.room_id = w.room_id
GROUP BY
    r.room_name;

-- 6. Find the rooms name with the Highest salary ---
SELECT r.room_name, MAX(w.salary) AS Maximus_salary
FROM rooms r
    JOIN workers w ON r.room_id = w.room_id
GROUP BY
    r.room_name
HAVING
    MAX(w.salary) = (
        SELECT MAX(salary)
        FROM workers
    );

-- 7 . Find the rooms name with the highest workers ---
SELECT r.room_name, COUNT(w.worker_id) AS worker_count
FROM rooms r
    JOIN workers w ON r.room_id = w.room_id
GROUP BY
    r.room_name
HAVING
    COUNT(w.worker_id) = (
        SELECT MAX(worker_count)
        FROM (
                SELECT COUNT(worker_id) AS worker_count
                FROM workers
                GROUP BY
                    room_id
            ) AS subquery
    );

-- 8. Count workers hired in each year---
SELECT EXTRACT(
        YEAR
        FROM hire_date
    ) AS Hire_Year, COUNT(worker_id) AS Worker_count
FROM workers
GROUP BY
    hire_year;