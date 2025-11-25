CREATE TABLE
    emp_12 (
        emp_id number (20) PRIMARY key,
        emp_name VARCHAR(10) not NULL,
        emp_salary number
    );

insert INTO
    emp_12
VALUES
    (101, 'alpha', 124121.222);

insert into
    emp_12
VALUES
    (102, 'bita', 1428412.11);

insert into
    emp_12
VALUES
    (103, 'luci', 454335.1);

insert into
    emp_12
VALUES
    (104, 'kiss', 4270755.22);

insert into
    emp_12
VALUES
    (105, 'pushi', 5683498.999);

insert into
    emp_12
VALUES
    (106, 'pushi', 5683498.999);

insert into
    emp_12
VALUES
    (107, 'pushi', 5683498.999);

--  for update the recode this query are use  in table in sql
UPDATE emp_12
set
    emp_name = 'bigbrother'
where
    emp_id = 106;

UPDATE emp_12
set
    emp_name = 'boss1'
WHERE
    emp_id = 106;

UPDATE emp_12
set
    emp_name = 'bosss4'
where
    emp_id = 107;

UPDATE emp_12
set
    emp_name = 'mil_gaya'
WHERE
    emp_id = 105;

--  for select the particular colunm form table 
select
    emp_id
from
    emp_12;

SELECT
    emp_id,
    emp_salary
from
    emp_12;

SELECT
    emp_id,
    emp_name
from
    emp_12;

select
    emp_id,
    emp_salary
FROM
    emp_12;

--  \ conditonal  using the where 
SELECT
    *
from
    emp_12
where
    emp_id <= 102;

SELECT
    *
from
    emp_12
where
    emp_id >= 102;

select
    *
from
    emp_12
where
    emp_id > 102;

select
    *
from
    emp_12
where
    emp_id > 103;

select
    *
from
    emp_12
where
    emp_name = 'pushi';

-- this query are for take recod e from for tabl between the recode
SELECT
    *
from
    emp_12
WHERE
    emp_id BETWEEN 102 and 106;

SELECT
    *
from
    emp_12
where
    emp_salary BETWEEN 500000 and 2151325452;

--  like  query are use for searching the rcoding   throught the chartere 
-- this for the searching the last   charater from the recode
SELECT
    *
from
    emp_12
WHERE
    emp_name like '%i';

--  this for frist  charater for  searching the  the reocde  for 
--  table or   reocde
select
    *
from
    emp_12
where
    emp_name like 'p%';

-- IN keyword are use for  creating the 
SELECT
    *
from
    emp_12
where
    emp_name in ('pushi');

--when  you  want  to fetch the recode in any  swquence the addcding  and decindingS
select
    *
FROM
    emp_12
ORDER BY
    emp_id DESC;

-- for asc
SELECT
    *
FROM
    emp_12
ORDER BY
    emp_id ASC;

--  now we are use the multiple condtional
SELECT
    *
from
    emp_12
WHERE
    emp_id = 105
    and emp_mame = 'i%';