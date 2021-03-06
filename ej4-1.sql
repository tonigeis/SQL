ALTER TABLE T_OFFICES
ADD PRIMARY KEY (OFFC_ID);

CREATE TABLE T_EMPLOYEES (
EMPL_ID INT NOT NULL AUTO_INCREMENT,
OFFC_ID INT NOT NULL,
KNLN_ID INT,
EMPL_FORNAME VARCHAR(50) NOT NULL,
EMPL_MIDDLE_NAME VARCHAR(50),
EMPL_SURNAME VARCHAR(50) NOT NULL,
EMPL_NUMBER INT NOT NULL,
EMPL_HIRE_DATE DATETIME NOT NULL,
EMPL_MENTOR_ID INT,
PRIMARY KEY (EMPL_ID)
);

INSERT INTO T_EMPLOYEES
(
	OFFC_ID, 
    KNLN_ID, 
    EMPL_FORNAME, 
    EMPL_SURNAME, 
    EMPL_NUMBER, 
    EMPL_HIRE_DATE
)
VALUES
(
	10, 
    10, 
    'Juan', 
    'Pérez', 
    150, 
    '2005/04/15'
);

INSERT INTO T_EMPLOYEES
(
	OFFC_ID, 
    KNLN_ID, 
    EMPL_FORNAME, 
    EMPL_SURNAME, 
    EMPL_NUMBER, 
    EMPL_HIRE_DATE
)
VALUES
(
	11, 
    20, 
    'Pedro', 
    'García', 
    151, 
    '2005/05/01'
);

DELETE FROM T_EMPLOYEES
WHERE EMPL_ID = 4;

SELECT * FROM T_EMPLOYEES;