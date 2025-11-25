CREATE table
    Studentinfo (
        std_id number (10) PRIMARY key,
        std_name VARCHAR(50) not NULL,
        std_stream VARCHAR(20) not null,
        std_year VARCHAR(10)
    );

insert INTO
    studentinfo
VALUES
    (101, 'shah deepak gopak', 'Bca', 'sy');

INSERT into
    studentinfo
VALUES
    (102, 'sarvan', 'b.com', 'fy');

INSERT intov
    studentinfo
VALUES
    (103, 'sanjay', 'hotal management', 'ty');

INSERT into
    studentinfo
VALUES
    (104, 'pyush', 'bca', 'sy');

insert into
    studentinfo
VALUES
    (105, 'ashish', 'BAA', 'ty');

insert into
    studentinfo
VALUES
    (106, 'mukesh_Bhai', 'B.teah', 'ty');

select
    std_name,
    std_phone
from
    infostd t1
    full JOIN studentinfo t2 on t1.std_id = t2.std_id;

SELECT
    std_address,
    std_name
from
    infostd t1
    RIGHT JOIN studentinfo t2 on t1.std_id = t2.std_id;

select
    *
FROM
    studentinfo t1
    FULL JOIN infostd t2 ON t1.std_id = t2.std_id;

select
    *
FROM
    infostd t1
    FULL JOIN studentinfo t2 on t1.std_id = t2.std_id;

SELECT
    std_name,
    std_phone
FROM
    studentinfo t1
    RIGHT JOIN infostd t2 on t1.std_id = t2.std_id;

SELECT
    std_name,
    std_address
FROM
    infostd t1
    RIGHT JOIN studentinfo t2 on t1.std_id = t2.std_id;

SELECT
    *
from
    studentinfo t1
    LEFT JOIN infostd t2 ON t1.std_id = t2.std_id;

--now i ma tring to inner join
SELECT
    *
from
    studentinfo t1
    INNER JOIN infostd t2 ON t1.std_id = t2.std_id;

select
    t1.std_id,
    t1.std_name,
    t1.std_stream,
    t2.std_phone
from
    studentinfo t1
    JOIN infostd t2 ON t1.std_id = t2.std_id;

--  this for find the how many student form the bca 
select
    t1.std_id,
    t1.std_name,
    t2.std_phone
from
    studentinfo t1
    JOIN infostd t2 ON t1.std_id = t2.std_id
where
    (std_stream) = 'bca';

-- -- .......................................................................................
-- 🔹 GROUP BY
-- Purpose: To group rows that have the same values in specified columns into summary rows.
-- Commonly Used With: Aggregate functions like COUNT(), SUM(), AVG(), MAX(), MIN(), etc.
-- Result: Returns one row per group.
SELECT
    emp_salary
FROM
    suraj31
GROUP BY
    emp_salary;

-- ORDER BY
-- Purpose: To sort the result set by one or more columns.
-- Sort Order: Can be ascending (ASC, default) or descending (DESC).
-- Does NOT group the data.
SELECT
    *
FROM
    suraj31
ORDER BY
    emp_salary DESC;

-- how having 
SELECT
    emp_name
FROM
    emp234
GROUP BY
    emp_name
HAVING
    COUNT(emp_id) > 1003;

-- .........................................................................................................................
SELECT
    emp_id
FROM
    emp234
GROUP BY
    emp_name
HAVING
    COUNT(emp_id) > 1003;

-- ..................................................
SELECT
    count(emp_id)
FROM
    emp234
GROUP BY
    emp_name
HAVING
    COUNT(emp_id) = 1003;

SELECT
    MIN(emp_id) AS example_id
FROM
    emp234
GROUP BY
    emp_name
HAVING
    COUNT(emp_id) > 1002;

SELECT
    max(emp_salary)
FROM
    emp234
GROUP BY
    emp_salary
HAVING
    COUNT(emp_id) > 1003;

-- ..................................................................
select
    COUNT(emp_id),
    emp_salary
FROM
    emp234
GROUP BY
    emp_salary
HAVING
    count(emp_id) > 1003;

--  now we appling the th  group by
select
    emp_name
from
    emp234 
select
    count(emp_salary)
from 
    emp234
GROUP BY
    (emp_salary)
HAVING
    count(*) < 500;

-- ..................................................................