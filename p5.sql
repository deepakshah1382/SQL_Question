-- / now i M Partices
create table
    welsgroup (
        emo_id number (10) PRIMARY KEY,
        emp_name VARCHAR(30),
        emp_address varchar(50),
        emp_salary decimal
    );

INSERT INTO
    welsgroup
VALUES
    (1001, 'deepak', 'vapi', 258957);

insert into
    welsgroup
VALUES
    (1002, 'suraj', 'gunjan', 214573);

insert into
    welsgroup
VALUES
    (1003, 'gopal', 'charwara', 5000000);

insert into
    welsgroup
VALUES
    (1004, 'kuntidev', 'nayagai', 25000);

insert into
    welsgroup
VALUES
    (1005, 'anuj', 'kanpur', 256980);

-- this query are for the upadte the table in this 
UPDATE welsgroup
SET
    emp_name = 'rahul'
where
    emp_id = 1001;

--  for selecting the coloum from the table 
SELECT
    *
FROM
    welsgroup;

-- accoding to your need you can select the 
SELECT
    emp_id
from
    welsgroup;

SELECT
    emp_name,
    emp_salary
from
    welsgroup;

-- how to change the column name which already execite in thi
ALTER TABLE welsgroup
RENAME COLUMN emo_id TO emp_id;

ALTER TABLE welsgroup
RENAME COLUMN emo_id TO emp_id;

--  now we can selecting the recode on base of condition 
SELECT
    *
FROM
    welsgroup
where
    emp_id < 1003;

SELECT
    *
FROM
    welsgroup
where
    emp_id >= 1003;

--  now we can chaking for the  name in this condtions 
--  when you searching from thre name you can selet only one recode  in this
SELECT
    *
from
    welsgroup
where
    emp_name = 'deepak';

select
    *
from
    welsgroup
where
    emp_id = 1005;

-- now we take the recode between the
SELECT
    *
from
    welsgroup
where
    emp_id BETWEEN 1002 and 1005;

SELECT DISTINCT
    emp_id
FROM
    emp234
LIMIT
    emp_id 1004;