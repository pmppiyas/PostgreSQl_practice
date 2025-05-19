CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    las_name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 15),
    grade CHAR(2),
    course VARCHAR(100),
    email VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

ALTER TABLE students RENAME COLUMN las_name to last_name;

SELECT * FROM students;

SELECT email FROM students;

SELECT student_id, age, dob FROM students;

SELECT first_name as "First Name" FROM students;

SELECT * FROM students ORDER BY dob DESC;

SELECT country FROM students ORDER BY country ASC;

--distinct: if any value is common that count one.
SELECT DISTINCT country FROM students ORDER BY country ASC;

SELECT DISTINCT blood_group FROM students ORDER BY blood_group ASC;

SELECT * FROM students WHERE country = 'Bangladesh';

SELECT blood_group FROM students WHERE blood_group = 'B+';

-- <> is not sign || without !
SELECT * FROM students WHERE country <> 'India';

SELECT *
FROM students
WHERE
    course = 'Computer Science'
    AND grade = 'A';

SELECT * FROM students WHERE country = 'USA' AND age >= 20;

SELECT * FROM students WHERE country = 'USA' OR country = 'Canada';

SELECT *
FROM students
WHERE (
        country = 'Australia'
        OR country = 'Bangladesh'
    )
    AND age >= 17;

SELECT *
FROM students
WHERE (
        course = 'Computer Science'
        OR course = 'Software Engineering'
    )
    AND grade = 'A'
    OR grade = 'A+';

-- Scalar Func
SELECT upper(first_name) from students;

SELECT lower(country) FROM students;

SELECT concat(first_name, ' ', last_name) FROM students;

SELECT length(last_name) FROM students;

-- Aggregate Func

SELECT * FROM students;

SELECT avg(age) AS avarage FROM students;

SELECT max(age) AS maximum FROM students;

SELECT min(age) AS minimum FROM students;

SELECT sum(age) FROM students;

SELECT count(age) AS how_many_i_have FROM students;

SELECT count(email) AS total_email
FROM students
WHERE
    country = 'USA' OR country = 'Australia';

INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'Alice',
        'Smith',
        18,
        'A',
        'Computer Science',
        'alice@example.com',
        '2006-02-15',
        'O+',
        'USA'
    ),
    (
        'Bob',
        'Johnson',
        19,
        'B',
        'Mathematics',
        'bob@example.com',
        '2005-07-21',
        'A-',
        'UK'
    ),
    (
        'Charlie',
        'Brown',
        17,
        'C',
        'Physics',
        'charlie@example.com',
        '2007-04-10',
        'B+',
        'Canada'
    ),
    (
        'David',
        'Williams',
        16,
        'B',
        'Chemistry',
        'david@example.com',
        '2008-01-29',
        'AB-',
        'Australia'
    ),
    (
        'Emma',
        'Taylor',
        20,
        'A',
        'Biology',
        'emma@example.com',
        '2004-09-05',
        'O-',
        'Germany'
    ),
    (
        'Fiona',
        'Garcia',
        18,
        'B',
        'Engineering',
        'fiona@example.com',
        '2006-06-30',
        'A+',
        'India'
    ),
    (
        'George',
        'Martinez',
        17,
        'C',
        'Economics',
        'george@example.com',
        '2007-08-12',
        'B-',
        'Mexico'
    ),
    (
        'Hannah',
        'Lopez',
        19,
        'A',
        'Finance',
        'hannah@example.com',
        '2005-11-23',
        'AB+',
        'Japan'
    ),
    (
        'Ian',
        'Miller',
        16,
        'B',
        'Psychology',
        'ian@example.com',
        '2008-03-17',
        'O+',
        'South Korea'
    ),
    (
        'Jack',
        'Davis',
        20,
        'A',
        'History',
        'jack@example.com',
        '2004-12-08',
        'A-',
        'France'
    ),
    (
        'Kara',
        'Wilson',
        18,
        'C',
        'Political Science',
        'kara@example.com',
        '2006-05-25',
        'B+',
        'Brazil'
    ),
    (
        'Leo',
        'Anderson',
        17,
        'B',
        'Sociology',
        'leo@example.com',
        '2007-02-03',
        'AB-',
        'South Africa'
    ),
    (
        'Mia',
        'Thomas',
        19,
        'A',
        'Medicine',
        'mia@example.com',
        '2005-06-11',
        'O-',
        'Italy'
    ),
    (
        'Nathan',
        'Harris',
        16,
        'C',
        'Law',
        'nathan@example.com',
        '2008-10-28',
        'A+',
        'Spain'
    ),
    (
        'Olivia',
        'Clark',
        20,
        'B',
        'Philosophy',
        'olivia@example.com',
        '2004-01-07',
        'B-',
        'Russia'
    ),
    (
        'Paul',
        'Young',
        18,
        'A',
        'Linguistics',
        'paul@example.com',
        '2006-09-19',
        'AB+',
        'China'
    ),
    (
        'Quinn',
        'Hall',
        17,
        'B',
        'Art',
        'quinn@example.com',
        '2007-07-14',
        'O+',
        'Argentina'
    ),
    (
        'Rachel',
        'Allen',
        19,
        'C',
        'Music',
        'rachel@example.com',
        '2005-04-02',
        'A-',
        'Netherlands'
    ),
    (
        'Samuel',
        'Wright',
        16,
        'A',
        'Sports Science',
        'samuel@example.com',
        '2008-12-26',
        'B+',
        'Sweden'
    ),
    (
        'Tina',
        'King',
        20,
        'B',
        'Theology',
        'tina@example.com',
        '2004-08-20',
        'AB-',
        'Thailand'
    ),
    (
        'Umar',
        'Hussain',
        17,
        'B',
        'Software Engineering',
        'umar@example.com',
        '2007-05-16',
        'O+',
        'Bangladesh'
    ),
    (
        'Sara',
        'Khan',
        18,
        'A',
        'Data Science',
        'sara@example.com',
        '2006-11-25',
        'A-',
        'India'
    ),
    (
        'Vikram',
        'Patel',
        20,
        'C',
        'Business Administration',
        'vikram@example.com',
        '2004-08-10',
        'B+',
        'India'
    ),
    (
        'Elif',
        'Demir',
        19,
        'B',
        'Artificial Intelligence',
        'elif@example.com',
        '2005-04-30',
        'AB-',
        'Turkey'
    ),
    (
        'Aisha',
        'Rahman',
        16,
        'A',
        'Cybersecurity',
        'aisha@example.com',
        '2008-09-12',
        'O-',
        'Bangladesh'
    ),
    (
        'Raj',
        'Mehta',
        18,
        'C',
        'Finance',
        'raj@example.com',
        '2006-07-07',
        'A+',
        'India'
    ),
    (
        'Jamil',
        'Hasan',
        17,
        'B',
        'Economics',
        'jamil@example.com',
        '2007-02-19',
        'B-',
        'Bangladesh'
    ),
    (
        'Melis',
        'Yıldız',
        19,
        'A',
        'Robotics',
        'melis@example.com',
        '2005-10-05',
        'AB+',
        'Turkey'
    );