CREATE TABLE EMPP_INFO(
    EMP_ID NUMBER (10) PRIMARY KEY,
    EMP_FIRST_NAME VARCHAR (20),
    EMP_LAST_NAME VARCHAR(20),
    EMP_MOBLIE_NUMBER INT ,
    EMP_ADDRESS VARCHAR (20),
    EMP_COUNTRY VARCHAR(25) 
);
SELECT * FROM EMPP_INFO;
INSERT INTO EMPP_INFO VALUES (102, 'deepak', 'shah', 8347357684, 'morai', 'indian'); 
INSERT INTO EMPP_INFO VALUES (102, 'SURAJ', 'SHAH', 8347357684, 'MAORI', 'SADUI') ;
INSERT INTO EMPP_INFO VALUES (103, 'SUNLI','SHAH',9328953392,'PRVATTTA', 'INDAI');
INSERT INTO EMPP_INFO VALUES (104, 'GOPAL','SHAH', 9737391005,'PANJAB','ISCLAND');
INSERT INTO EMPP_INFO VALUES(105,'KUNTI','DEVI', 83474025635,'BHIHAR','NEPAL');
--update the recods in th exsiting table 
UPDATE EMPP_INFO 
SET EMP_ID=101
WHERE EMP_ID=102;
--  select queres 
select emp_id,EMP_FIRST_NAME from empp_info;

select * from empp_info;
SELECT DISTINCT EMP_COUNTRY FROM EMPP_INFO;
-- DISTINCE
SELECT DISTINCT EMP_ID, EMP_FIRST_NAME,EMP_MOBLIE_NUMBER FROM EMPP_INFO;

SELECT EMP_ID, EMP_FIRST_NAME,EMP_MOBLIE_NUMBER FROM EMPP_INFO;

-- where cluse use for the filter the records
SELECT * from empp_info
WHERE emp_id>=102;

-- most of time use for the number releted recodes
SELECT * from  empp_info
WHERE emp_id BETWEEN 102 and 105;

--  like are foe the char type date in use for filter in recodes 
select * from empp_info
WHERE EMP_FIRST_NAME
 like 'S%';

SELECT * from empp_info 
WHERE emp_last_name like '%H';

-- in 
SELECT * from empp_info 
WHERE emp_last_name IN ('SHAH','MORAI');

-- order by use for the arrange the fetch  the data in the ascending and descending oreder
SELECT * from empp_info
ORDER BY EMP_ID,EMP_ADDRESS ASC;





-- 
CREATE TABLE EMP_JOB_ROLE(
    EMP_ID NUMBER (10) PRIMARY KEY ,
    JOB_TITLE_EMP VARCHAR (20) ,
    EMP_DEPT VARCHAR (20) NOT NULL

);
SELECT * FROM EMP_JOB_ROLE;
INSERT INTO EMP_JOB_ROLE VALUES(101,'SLALSMAN','PURCHAS_DEPT');
INSERT INTO EMP_JOB_ROLE VALUES(102,'ACCONTANY','FINANCE');
INSERT INTO EMP_JOB_ROLE VALUES(103,'FIRESAFTY','SAFTY' );
INSERT INTO EMP_JOB_ROLE VALUES (104,'ROWMARTIALS','MARTILES');
INSERT INTO EMP_JOB_ROLE VALUES (105, 'HR', 'HUMANRESOU');

SELECT * FROM EMP_JOB_ROLE;
--  now aaplying the jion inner
select emp_id,  emp_dept
from emp_info
INNER JOIN emp_job_role On emp_title_emp=emp_dept;
-- now we apping the 

UPDATE emp_job_role
SET emp_id=106
WHERE emp_id=101;
UPDATE emp_job_role
set emp_id 
-- select accoding to need the 

SELECT emp_id,emp_dept from emp_job_role;
--where 
SELECT * FROM  EMP_JOB_ROLE 
WHERE EMP_ID>103;
SELECT * FROM EMP_JOB_ROLE
WHERE EMP_ID = 105;

SELECT * from emp_job_role
where emp_id BETWEEN 103 and 105;
SELECT * from emp_job_role
where emp_dept LIKE 'F%';

SELECT * FROM emp_job_role
ORDER BY emp_id ASC;

SELECT * FROM emp_job_role
ORDER BY emp_id DESC;

select * from emp_job_role
where emp_dept in ('SAFTY');
-- 
UPDATE emp_job_role
set emp_dept='mangement'
WHERE emp_dept='SAFTY';

SELECT EMP_DEPT,EMP_ID FROM EMP_JOB_ROLE;

-- WHERE CALU



--  24-12-2024
UPDATE 












































CREATE TABLE EMP_EDUCATION(
    EMP_ID NUMBER (10) PRIMARY KEY ,
    FILD_EDUC VARCHAR(20) ,
    Degree_emp VARCHAR (20)
);
 SELECT * from  EMP_EDUCATION;

INSERT INTO EMP_EDUCATION VALUES (101,'commeric','b.com');
insert into emp_education VALUES (102,'scienc','engerring');
INSERT into emp_education VALUES (103, 'computer','gariphdesingner');
insert into emp_education VALUES (104,'web-deveploer','software');
insert into emp_education VALUES (105, 'web-designer', 'desinger');

UPDATE emp_education
set degree_emp='engerring'
where degree_emp ='datamangemes';


UPDATE emp_education
set degree_emp='b.com'
WHERE degree_emp='bba';

select  emp_id,fild_educ from  emp_education;
 SELECT * from emp_education
 where emp_id>=3;

 SELECT * from emp_education
 WHERE emp_id BETWEEN 102 and 105;

select * from  emp_education 
where degree_emp LIKE '%e';

select * from  emp_education 
where degree_emp LIKE 'e%';
 
 SELECT * from emp_education
 ORDER BY degree_emp  ASC;
 
 SELECT * from emp_education
 ORDER BY degree_emp  DESC;

select * from emp_education
where  degree_emp in ( 'desinger');

--  
UPDATE emp_education
set degree_emp='desinger'
WHERE degree_emp='mangement';

