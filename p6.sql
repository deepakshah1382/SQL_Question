CREATE table
    emp234 (
        emo_id number (10) PRIMARY KEY,
        emp_name VARCHAR(30),
        emp_address varchar(50),
        emp_salary decimal
    );

--  when you want to change the filed name than using this querys in 
ALTER TABLE emp234
RENAME COLUMN emo_id to emp_id;

insert INTO
    emp234
VALUES
    (1001, 'shivam', 'lunawal', 25689.11);

insert INTO
    emp234
VALUES
    (1002, 'jeshwal', 'thane', 256239.11);

insert INTO
    emp234
VALUES
    (1003, 'krishna', 'mthura', 25689.11);

insert INTO
    emp234
VALUES
    (1004, 'ramlal', 'ayodhya', 25689.11);

insert INTO
    emp234
VALUES
    (1005, 'ramlal', 'ayodhya', 25689.11);

insert INTO
    emp234
VALUES
    (1006, 'ramlal', 'ayodhya', 25689.11);

-- now ia m appling the  query on this table
UPDATE emp234
SET
    emp_name = 'shubham'
where
    emo_id = 1004;

--  this quers are use for take column from the table 
select
    emp_id,
    emp_name
from
    emp234;

SELECT
    emp_id,
    emp_salary
from
    emp234;

--now this query are for fetch data from table using condition
SELECT
    *
from
    emp234
where
    emp_id = 1002;

SELECT
    *
from
    emp234
where
    emp_id > 1003;

SELECT
    *
from
    emp234
WHERE
    emp_name = 'shivam';

--  now  i am taking the recode  between the recode
SELECT
    *
from
    emp234
WHERE
    emp_id BETWEEN 1001 and 1004;

SELECT
    *
FROM
    emp234
WHERE
    emp_salary BETWEEN 10000.211 and 32130.210030;

SELECT
    *
from
    emp234
WHERE
    emp_id BETWEEN 1002 and 1003;

--  find the recode on the basic onjthe letter
--  this is use for the find with the last letter
SELECT
    *
from
    emp234
where
    emp_name LIKE '%l';

SELECT
    *
FROM
    emp234
where
    emp_address like '%a';

-- now recode find on the base of frist letter in like consdition
SELECT
    *
from
    emp234
where
    emp_name like 's%';

SELECT
    *
from
    emp234
where
    emp_address like 'a%';

--  now we  learning the in key word 
SELECT
    *
from
    emp234
where
    emp_name in ('shivam');

SELECT
    *
from
    emp234
WHERE
    emp_address in ('mthura');
-- how to use the the like the  with or condition 
SELECT * from emp234 where emp_name  like 'm%'  or  emp_name LIKE 'a%';
-- Return all customers that starts with "b" and ends with "s":
 SELECT * from  emp234 where emp_name like 'a%a';




--  now data fetch in hte asc and dsc order 
--  now frist learn in asc order
SELECT
    *
from
    emp234
ORDER BY
    emp_id ASC;

SELECT
    *
FROM
    emp234
ORDER BY
    emp_salary ASC;

--  now fro desc in  order in this
-- earn in asc order
SELECT
    *
from
    emp234
ORDER BY
    emp_id DESC;

SELECT
    emp_salary
FROM
    emp234
ORDER BY
    emp_salary DESC;

-- AND are use for fetch data from the table for more than one condition
SELECT
    *
from
    emp234
where
    emp_id > 102
    and emp_salary > 12413;

SELECT
    emp_id,
    emp_salary
from
    emp234
where
    emp_id > 102
    and emp_salary > 12413;

-- ....................................
-- OR opreter are use fro the when you want fecth data basic on the two conditions 
SELECT
    *
FROM
    emp234
where
    emp_id > 1003
    or emp_salary > 15230.010;

SELECT
    *
FROM
    emp234
where
    emp_id = 1003
    or emp_salary = 256239;

SELECT
    emp_name,
    emp_salary
from
    emp234
WHERE
    emp_name = 'a%'
    or emp_salary > 35261;

-- NOT  keyworld using for give the out which you not want fecth
--  NOT and AND together using
SELECT
    emp_id,
    emp_salary
from
    emp234
WHERE
    NOT emp_id = 1004
    and emp_salary > 25698;

SELECT
    emp_id
from
    emp234
where
    NOT emp_id > 1003;

--  now NOT  and BETWEEN together
SELECT
    emp_id,
    emp_name
from
    emp234
WHERE
    not emp_id BETWEEN 1002 and 1005;

-- now delete 
DELETE from emp234
where
    emp_id = 1006;

--  now we select the top thid query select only the top recode only
SELECT
    top 1003 *
from
    emp234;

--  limit
SELECT
    *
FROM
    emp234
LIMIT
    3;

SELECT
    emp_id
from
    emp234
LIMIT
    1004;

SELECT
    *
from
    emp234
LIMIT
    3;

--  now we are start the aggragete function in this many query are  there in like min max count  sum and avg
--  this for creating  the min  salary from the suraj31 table
SELECT
    min(emp_salary)
from
    emp234;

--  now for maxmum
SELECT
    max(emp_salary)
FROM
    emp234;

SELECT
    max(emp_salary)
FROM
    emp234;

-- when you want to change the column name than using the
SELECT
    min(emp_salary) as mera_salary,
    emp_salary
from
    emp234;

--
--  now we leraing the sql
-- now we learning the count() function
--  this for the all the table or all the recode
--  this will conut all the recode from the table
SELECT
    count(*)
from
    emp234;

SELECT
    COUNT(emp_salary)
FROM
    emp234;

--  FOR COUNT THE only the unique recode
--  for unique VALUES
-- distance form the unique
select
    COUNT(DISTINCT emp_salary)
from
    emp234;

SELECT
    count(DISTINCT EMP_ID)
FROM
    EMP234;

--add the where clause for the count function 
-- this using for cout the row fromt table accding to the condition
SELECT
    count(DISTINCT emp_id)
FROM
    emp234
where
    emp_id > 1003;

SELECT
    COUNT(DISTINCT emp_salary)
from
    emp234
where
    emp_salary > 25629;

--
-- Ignore Duplicates for ignore the duplicate recode
select
    count(DISTINCT emp_salary)
from
    emp234
where
    emp_salary >= 25680;

-- Alias  mean the make the name for you table According  to the  you need
SELECT
    count(DISTINCT emp_name)
from
    emp234
WHERE
    emp_name = 'ramlal';

--  sum  using the can addition in this
-- you can also add the condtion when you want 
--  you can also add the 
SELECT
    sum(emp_salary)
from
    emp234;

SELECT
    sum(emp_salary)
from
    emp234
where
    emp_salary > 100000;

--  sum Accoding to the conditons
SELECT
    sum(emp_salary)
from
    emp234
where
    emp_salary < 25700;

-- when  you want to change the column name than using this as
select
    sum(emp_salary) as totalsalary
FROM
    emp234
where
    emp_id < 1004;

--now sum with the group bys
select
    sum(emp_salary) as Totalsalary
FROM
    emp234
ORDER BY
    emp_salary;

--Now we AVg with all the query
SELECT
    avg(emp_salary)
from
    emp234;

-- Avg with where caluse
SELECT
    avg(emp_salary)
from
    emp234
where
    emp_id > 1003;

-- Avg for  AS
select
    avg(emp_salary) AS Agvtotal
from
    emp234;

-- --heiher than condition
-- The subquery SELECT AVG(emp_salary) FROM emp234 calculates the average salary.
-- The main query fetches all records from emp234 where emp_salary is greater than that average.
SELECT
    *
FROM
    emp234
where
    emp_salary > (
        SELECT
            avg(emp_salary)
        FROM
            emp234
    );

SELECT
    *
from
    emp234
where
    emp_salary < (
        SELECT
            avg(emp_salary)
        from
            emp234
    );

SELECT
    *
from
    emp234
where
    emp_salary > (
        SELECT
            min(emp_salary)
            from emp234;
    )
    -- -- 
    -- Here we use the AVG() function
    -- and the
    -- GROUP BY
    --     clause,
    --     to return the average price for each id  in the emp234 table
SELECT
    avg(emp_salary) as salaryTotal,
    emp_id
from
    emp234
GROUP BY
    emp_id;
    
    select * from emp234 where emp_name like 's%';
    -- wildcard 
    SELECT * FROM emp234
WHERE emp_name LIKE 'a%';
-- now me tring to join the coloumn 
SELECT id_emp.emp_id , emp_name.emp_name from  suraj31 
INNER JOIN emp234  on id_emp.suraj31 = emp_id.emp234;
SELECT emp234.emp_id,emp234.emp_name
FROM suraj31
INNER JOIN emp234 ON suraj31.id_emp = emp234.emp_id;
  select *  from emp234 as emp  INNER JOIN  surja31 as emp2 on emp.emp_id=emp2.suraj31;
  SELECT *
FROM emp234 
INNER JOIN surja31 
ON emp234.emp_name LIKE '%' || suraj31.emp_name || '%';


SELECT *
FROM emp234
INNER JOIN SURAJ31
ON emp234.emp_name LIKE '%s' || SURAJ31.emp_name || '%s';

select * FROM emp234   em1 
FULL  JOIN emp235 em2 on em1.emp_id = em2.emp_id;
 
 SELECT *
FROM emp234 table1
inner JOIN  emp235 table2
ON table1.emp_name = table2.name;

--  now we learning the join 

select count(emp_id) FROM  emp234 t1 
join emp234 t2 on t1.emp_id=t2.emp_salary;


SELECT std_name FROM emp234 WHERE LENGTH(emp_name) > 15;
