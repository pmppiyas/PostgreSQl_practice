SELECT * FROM students;

SELECT country FROM students GROUP BY country;

SELECT student_id, dob FROM students GROUP BY student_id, dob;

SELECT country, COUNT(*) FROM students GROUP BY country;

SELECT country, COUNT(*), AVG(age) FROM students GROUP BY country;

SELECT country, AVG(age)
FROM students
GROUP BY
    country
HAVING
    avg(age) >= 19;

-- Filter group useing HAVING to show only Countrys with agerage Above 18

SELECT country, AVG(age)
FROM students
GROUP BY
    country
HAVING
    AVG(age) > 18;

SELECT * FROM students;

SELECT course, AVG(age), blood_group
FROM students
    -- WHERE
    --     grade = 'A'
    --     AND blood_group IN ('B+', 'AB+')
GROUP BY
    course,
    grade,
    blood_group
HAVING
    AVG(age) >= 19;

SELECT EXTRACT(
        year
        FROM dob
    ) as birth_year, count(*)
FROM Students
GROUP BY
    birth_year;