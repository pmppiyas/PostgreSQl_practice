SELECT * FROM students ORDER BY age ASC;
-- NOT
SELECT * FROM students WHERE NOT country = 'India';

-- NULL
SELECT * From students WHERE email IS NOT NULL;

-- Coalesce -> if null add Not Provieded
SELECT first_name, COALESCE(email, 'Not Provieded') FROM students;

SELECT *
FROM students
WHERE
    country = 'Canada'
    OR country = 'USA'
    OR country = 'Australia';

SELECT *
FROM students
WHERE
    country NOT IN (
        'Canada',
        'USA',
        'UK',
        'Australia'
    );

SELECT * FROM students WHERE age NOT BETWEEN 18 AND 20;

SELECT *
FROM students
WHERE
    dob BETWEEN '2004-01-01' AND '2005-12-30'
ORDER BY dob ASC;

-- search by a but before 3 letters for 3 _.
-- Like is case sensitive
SELECT * FROM students WHERE first_name LIKE '_a%';

--ILIKE is case insensitive
SELECT * FROM students WHERE first_name ILIKE 'al%';

-- Pagination
SELECT *
FROM students
WHERE
    country IN (
        'USA',
        'UK',
        'Canada',
        'Bangladesh'
    )
LIMIT 5
OFFSET
    5;

SELECT * FROM students LIMIT 5 OFFSET 5 * 0;

SELECT * FROM students LIMIT 5 OFFSET 5 * 1;

SELECT * FROM students LIMIT 5 OFFSET 5 * 2;

SELECT * FROM students LIMIT 5 OFFSET 5 * 3;

-- Delate
DELETE FROM students WHERE grade IN ('B-', 'C');

DELETE FROM students WHERE country IN ('India');

SELECT * FROM students;

-- Update
UPDATE students
SET
    email = 'jack@update.gamil.com'
WHERE
    student_id = 10;

UPDATE students
SET
    email = 'piyas@gmail.com',
    age = 18
WHERE
    student_id = 10;

UPDATE students SET dob = '1999-12-08' WHERE student_id = 13;

SELECT * FROM students WHERE student_id = 13;



