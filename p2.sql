CREATE TABLE
    EMPP_INFO1 (
        EMP_ID NUMBER (10) PRIMARY KEY,
        EMP_FIRST_NAME VARCHAR(20),
        EMP_LAST_NAME VARCHAR(20),
        EMP_MOBLIE_NUMBER INT,
        EMP_ADDRESS VARCHAR(20),
        EMP_COUNTRY VARCHAR(25)
    );

SELECT
    *
FROM
    EMPP_INFO1;

INSERT INTO
    EMPP_INFO1
VALUES
    (
        102,
        'deepak',
        'shah',
        8347357684,
        'morai',
        'indian'
    );

INSERT INTO
    EMPP_INFO1
VALUES
    (
        102,
        'SURAJ',
        'SHAH',
        8347357684,
        'MAORI',
        'SADUI'
    );

INSERT INTO
    EMPP_INFO1
VALUES
    (
        103,
        'SUNLI',
        'SHAH',
        9328953392,
        'PRVATTTA',
        'INDAI'
    );

INSERT INTO
    EMPP_INFO1
VALUES
    (
        104,
        'GOPAL',
        'SHAH',
        9737391005,
        'PANJAB',
        'ISCLAND'
    );

INSERT INTO
    EMPP_INFO1
VALUES
    (
        106,
        'KUNTI',
        'DEVI',
        83474025635,
        'BHIHAR',
        'NEPAL'
    );

-- select query ready to apply
-- this for singal row for only
UPDATE empp_info1
set
    EMP_ID = 107
WHERE
    EMP_ID = 106;

-- for taking the  take the colu
SELECT emp_id ,  EMP_FIRST_NAME FROM empp_info1;