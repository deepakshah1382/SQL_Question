CREATE table
    suraj32 (
        id_emp number (10) PRIMARY KEY,
        emp_name VARCHAR(50) NOT NULL,
        emp_salary float (10)
    );

INSERT into
    suraj32
VALUES
    (101, 'deepak', 4500.0);

INSERT into
    suraj32
VALUES
    (102, 'suraj shah', 10235.11);

INSERT into
    suraj32
VALUES
    (103, 'gopalshah', 10254.22);

INSERT into
    suraj32
VALUES
    (104, 'shivam rai', 102563.33);

INSERT INTO
    suraj32
VALUEs
    (105, 'nikhil', 1024586.10);

INSERT into
    suraj32
VALUES
    (107, 'saurabh', 12547.022);

INSERT into
    suraj32
VALUES
    (109, 'saurabh chota', 12547.022);

-- for change the recode for this querse are use for this 
UPDATE suraj32
SET
    id_emp = 108
WHERE
    id_emp = 109;

-- this  query use take the row form the table for accoding  to condotinal
SELECT
    id_emp,
    emp_salary
FROM
    suraj32;

--  this query are use for the  take recode form table accoding to conditonal 
-- exmple emp_id ,salary condition
SELECT
    *
FROM
    suraj32
WHERE
    id_emp = 103;

SELECT
    *
from
    suraj32
WHERE
    emp_name = 'deepak';

-- when you want to  take the recode  form the between the 
SELECT
    *
from
    suraj32
where
    id_emp BETWEEN 102 and 105;

SELECT
    *
FROM
    suraj32
where
    emp_salary BETWEEN 10235.11 and 1024586.10;

--  this quser are use for the  fetch the   recode form the 
-- most of time using in  the for searching the name for start and the ending 
-- when you use the percentage symbol at the end of charter the use get the recdoe from table 
-- the name which haveing s  letter in startin 
select
    *
from
    suraj32
WHERE
    emp_name LIKE 's%';

-- now for ending letter in the recode
select
    *
from
    suraj32
WHERE
    emp_name like '%h';

--  now this query have the IN keyword 
-- you can  search the recode with two  condition
SELECT
    *
FROM
    suraj32
WHERE
    emp_name in ('shivam rai');

-- this query are use for the  when you want to in any type order
SELECT
    *
from
    suraj32
ORDER BY
    emp_name DESC;

SELECT
    *
FROM
    suraj32
ORDER BY
    id_emp ASC;

SELECT
    *
FROM
    suraj32
ORDER BY
    id_emp DESC;

--  this query are use for when you want to satisti
-- more than one condtion
SELECT
    *
FROM
    suraj32
WHERE
    id_emp > 101
    and emp_name = 'shivam rai''deepak';