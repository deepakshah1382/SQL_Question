CREATE table
    infostd (
        std_id number (10) PRIMARY KEY,
        std_phone number (20),
        std_address VARCHAR(10)
    );

insert into
    infostd
VALUES
    (101, 3928353392, 'welspun');

insert into
    infostd
VALUES
    (102, 665662595, 'morai');

insert into
    infostd
VALUES
    (103, 85697423, 'vapi');

insert into
    infostd
VALUES
    (104, 856982172, 'mumbai');

insert into
    infostd
VALUES
    (105, 365724542, 'saputara');

insert into
    infostd
VALUES
    (107, 365289565, 'bhilad');

--  left join 
SELECT
    *
FROM
    infostd t1
    INNER JOIN studentinfo t2 ON t1.std_id = t2.std_id;

SELECT
    std_name,
    std_address
FROM
    infostd t1
    INNER JOIN studentinfo t2 on t1.std_id = t2.std_id;

SELECT
    std_name,
    std_phone
FROM
    studentinfo table1
    LEFT JOIN infostd table2 ON table1.std_id = table2.std_id;

-- left join with singal table query 
select
    std_name,
    std_address
from
    studentinfo table1
    RIGHT JOIN infostd table2 ON table1.std_id = table2.std_id
where
    std_name like 's%';

--right
SELECT
    std_name
from
    infostd t1
    RIGHT JOIN studentinfo t2 on t1.std_id = t2.std_id;

SELECT
    *
FROM
    studentinfo table1
    RIGHT JOIN infostd table2 ON table1.std_id = table2.std_id;

-- left join
SELECT
    *
FROM
    studentinfo table1
    LEFT JOIN infostd table2 ON table1.std_id = table2.std_id;

SELECT
    std_name
from
    infostd t1
    RIGHT JOIN studentinfo t2 on t1.std_id = t2.std_id;

-- --  inner join 
-- JOIN and INNER JOIN will return the same result.
-- INNER is the default join type for JOIN, so when you write JOIN the parser actually writes INNER JOIN.
SELECT
    *
from
    infostd t1
    INNER JOIN studentinfo t2 on t1.std_id = t2.std_id;

select
    *
from
    infostd t1
    JOIN studentinfo t2 on t1.std_id = t2.std_id;

-- Note: In some databases LEFT JOIN is called LEFT OUTER JOIN.
-- left  join return the all the recode from the left side in the right side only the machting
-- Note: The LEFT JOIN keyword returns all records from the left table (Customers), even if there are no matches in the right table (Orders).
SELECT
    std_name,
    std_stream
from
    studentinfo t1
    LEFT JOIN infostd t2 ON t1.std_id = t1.std_id;

-- Note: The RIGHT JOIN keyword returns all records from the right table (Employees), even if there are no matches in the left table (Orders).
SELECT
    std_name
FROM
    studentinfo t1
    RIGHT JOIN infostd t2 ON t1.std_id = t2.std_id;

--  now self join
-- A self join is a regular join, but the table is joined with itself.
-- self join are powerful for comparing values in a column of rows with same table
SELECT
    *
from
    studentinfo t1
    JOIN studentinfo t2 ON t1.std_id = t2.std_id
where
    t1.std_name <> t2.std_name;

-- ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
--  now we learn the the union insql
-- The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL
SELECT
    std_id
from
    studentinfo
UNION ALL
SELECT
    std_phone
FROM
    infostd;

-- ............................................
-- Note: The column names in the result-set are usually equal to the column names in the first SELECT statement.
SELECT
    emp_name
from
    emp234
UNION all
SELECT
    std_address
FROM
    infostd;

-- now i trying the for the some table
-- unique  values only giving the
SELECT
    std_name
from
    studentinfo
UNION ALL
SELECT
    std_address,
    std_id
FROM
    infostd;

-- now  union with where
SELECT
    emp_name,
    emp_salary
FROM
    emp234
where
    emp_id = 1004
UNION
SELECT
    std_id,
    std_name
FROM
    studentinfo
where
    std_id = 104;

--now we are learning the  group by
SELECT
    std_name
from
    studentinfo
where
    std_id > 103
GROUP BY
    std_name;

-------------------
SELECT
    emp_address
from
    emp234
WHERE
    emp_name like 's%'
GROUP BY
    emp_address;

-- group by with the aggregate function
--  count the the some things from the
SELECT
    COUNT(emp_id),
    emp_id
from
    emp234
GROUP BY
    emp_name;

-- group by the this use with the  aggregate  function
select
    std_name
FROM
    studentinfo
where
    std_id > 103
GROUP BY
    std_name
ORDER BY
    count(std_id) DESC;

--some things appling for the
SELECT
    emp_name
FROM
    emp234
WHERE
    emp_name like 's%'
GROUP BY
    emp_name
ORDER BY
    sum(emp_id) DESC;

--  accoding to salary
SELECT
    emp_name
from
    emp234
where
    emp_id < 1003
GROUP BY
    emp_name
ORDER BY
    sum(emp_salary) ASC;

-- GROUP BY With JOIN Example
SELECT
    std_name
FROM
    studentinfo table1
    INNER JOIN infostd table2 ON table1.std_id = table1.std_id;

-- now group by all the 
SELECT
    std_name,
    std_id
FROM
    studentinfo
GROUP BY
    std_stream;

SELECT
    std_stream,
    COUNT(*) AS stream_count
FROM
    studentinfo
GROUP BY
    std_stream
    -- .......................................
SELECT
    std_stream,
    COUNT(*)
FROM
    studentinfo
GROUP BY
    std_stream;
    -- .............................................................