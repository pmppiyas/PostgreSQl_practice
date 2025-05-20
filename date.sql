--time & date
SHOW timezone;

SELECT now();
--date
SELECT CURRENT_DATE;
--date
SELECT now()::date;
--time
SELECT now()::time;

--date-format
SELECT to_char(now(), 'yyyy/mm/dd')

-- Duration
SELECT CURRENT_DATE - INTERVAL '1 year 2 month 20 days'

-- Age
SELECT age (CURRENT_DATE, '2002-07-13')

CREATE TABLE timeZ (
    tz TIMESTAMP without time zone,
    tsz TIMESTAMP with time zone
)

INSERT INTO
    timez
VALUES (
        '2020-10-10 10:45:00',
        '2021-05-05 05:05:05'
    )

SELECT dob, age (CURRENT_DATE, dob) FROM students;

-- Extract date

SELECT EXTRACT( YEAR FROM '2002-12-12'::date );

SELECT EXTRACT( YEAR FROM dob ) FROM students;