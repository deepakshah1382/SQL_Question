-- DDL  COMMAND ARE USE FOR THE CREATE THE TABLE AND MAKING FOR CONSTRAST INTHE TABLE , INDEX,VIEW
-- DLL COMMAND ARE 
-- Defines and manages the structure of database objects like tables, views, indexes, etc.
-- Common Commands:
-- CREATE – create tables or other objects
-- ALTER – modify object structure
-- DROP – delete database objects
-- TRUNCATE – quickly remove all data from a table
-- RENAME – rename objects
-- ...........................................................................................................................
--  NOW WE CREATING THE TABLE 
--  this for creating table syntax
CREATE TABLE
    deep (name VARCHAR2 (20));

--when you want to add the new table which is already present or created
-- when you want to add new COLUMN than use this syntax
ALTER TABLE deep ADD roll_no varchar2 (20);

-- when you want to modify datatype ,size than use this
ALTER TABLE deep MODIFY name CHAR(15);

-- when you want to change the column name than use this
ALTER TABLE deep
RENAME column name to std_name;

--
create table
    ppp1 (std_name VARCHAR(20));

alter table ppp1 add emp_id number (20);

-- when you want to  MODIFY
ALTER TABLE ppp1 MODIFY std_name CHAR(20);

-- when you want to remove column from table than use this
ALTER table ppp1
DROP COLUMN std_name;

-- when you want to change the column name 
alter TABLE ppp1
RENAME COLUMN std_id to emp_salary;

-- when  you want to change  the tabel name 
RENAME ppp1 to papatarble;

-- when you want to delect the table or drop the table than using  this
drop table ppp1;

-- when you want to delect the only the recode the use this
TRUNCATE table ppp1;
