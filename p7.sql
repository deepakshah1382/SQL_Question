CREATE table
    emp235 (
        emo_id number (10) PRIMARY KEY,
        emp_name VARCHAR(30),
        emp_address varchar(50),
        emp_salary decimal
    );

insert INTO
    emp235
VALUES
    (1001, 'shivam', 'lunawal', 25689.11);

insert INTO
    emp235
VALUES
    (1002, 'jeshwal', 'thane', 256239.11);

insert INTO
    emp235
VALUES
    (1003, 'krishna', 'mthura', 25689.11);

insert INTO
    emp235
VALUES
    (1004, 'ramlal', 'ayodhya', 25689.11);

insert INTO
    emp235
VALUES
    (1005, 'ramlal', 'ayodhya', 25689.11);

insert INTO
    emp235
VALUES
    (1006, 'ramlal', 'ayodhya', 25689.11);

-- now ia m appling the  query on this table
UPDATE emp235
SET
    emp_name = 'shubham'
where
    emo_id = 1004;