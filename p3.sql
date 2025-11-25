CREATE table
    deepak31 (
        emp_id number (10) PRIMARY KEY not NULL,
        emp_name VARCHAR(50),
        emp_salary DECIMAL(10)
    );

insert INTO
    deepak31
VALUES
    (101, 'alpha', 124121.222);

insert into
    deepak31
VALUES
    (102, 'bita', 1428412.11);

insert into
    deepak31
VALUES
    (103, 'luci', 454335.1);

insert into
    deepak31
VALUES
    (104, 'kiss', 4270755.22);

insert into
    deepak31
VALUES
    (105, 'pushi', 5683498.999);

insert into
    deepak31
VALUES
    (106, 'pushi', 5683498.999);

insert into
    deepak31
VALUES
    (107, 'pushi', 5683498.999);

-- update query 
UPDATE deepak31
set
    emp_name = 'liciya'
where
    emp_name = 'pushi';

-- for select the only required colounm
SELECT
    emp_id,
    emp_name
from
    deepak31;

-- where 
SELECT
    *
from
    deepak31
where
    emp_id = 103;

select
    *
FROM
    deepak31
where
    emp_id > 103;

SELECT
    *
FROM
    deepak31
WHERE
    emp_name = 'bita';

-- between 
SELECT
    *
from
    deepak31
where
    emp_id BETWEEN 102 and 106;

-- like query are use for fetch the recode on the base letter
SELECT
    *
FROM
    deepak31
WHERE
    emp_name like '%i';

-- IN  keyword are more than one condition
select
    *
FROM
    deepak31
WHERE
    emp_name IN ('kiss');

-- asc and desc
SELECT
    *
from
    deepak31
ORDER BY
    emp_id ASC;

SELECT
    *
from
    deepak31
ORDER BY
    emp_id DESC;

-- now we apping the two key word in same things
-- and like  or 
SELECT
    *
from
    deepak31
WHERE
    emp_name = '%k'
    and emp_id > 102;

-- or 
SELECT
    *
FROM
    deepak31
WHERE
    emp_id > 103
    or emp_salary > 51255.22;

--  not keyword in the
SELECT
    *
from
    deepak31
WHERE
    not emp_name = 'kiss';

-- between and  to use  not also  include
SELECT
    *
from
    deepak31
WHERE
    not emp_id BETWEEN 102 and 103;

-- update query now use for the mutipl condition
UPDATE deepak31 
set
    emp_name = 'kaluiS',
    emp_salary = 210315101
WHERE
    emp_id = 106;

--delete query / 