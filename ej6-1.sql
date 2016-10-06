SELECT o.OFFC_COUNTRY, o.OFFC_CITY
FROM T_EMPLOYEES e
INNER JOIN T_OFFICES o
ON e.OFFC_ID = o.OFFC_ID;

SELECT OFFC_COUNTRY, OFFC_CITY
FROM T_OFFICES;

SELECT COUNT(EMPL_ID) AS CNT_EMPL, OFFC_ID
FROM T_EMPLOYEES
GROUP BY OFFC_ID;

SELECT * FROM T_OFFICES;

SELECT OFFC_COUNTRY, OFFC_CITY, COUNT(OFFC_ID) NUM_OFICINAS
FROM T_OFFICES
GROUP BY OFFC_CITY;

SELECT EMPL_FORNAME, EMPL_SURNAME
FROM T_EMPLOYEES
WHERE
OFFC_ID IN (
SELECT OFFC_ID FROM T_OFFICES WHERE OFFC_COUNTRY = 'España');

SELECT e.EMPL_FORNAME, e.EMPL_SURNAME
FROM T_EMPLOYEES e
INNER JOIN T_OFFICES o
	ON e.OFFC_ID = o.OFFC_ID
    WHERE OFFC_COUNTRY = 'España';
    
SELECT e.EMPL_FORNAME, e.EMPL_SURNAME, o.OFFC_COUNTRY, o.OFFC_CITY
FROM T_EMPLOYEES e 
INNER JOIN T_OFFICES o 
ON e.OFFC_ID = o.OFFC_ID
ORDER BY e.EMPL_SURNAME;

SELECT e.EMPL_FORNAME, e.EMPL_SURNAME, e.EMPL_HIRE_DATE
FROM T_EMPLOYEES e
ORDER BY e.EMPL_HIRE_DATE DESC, e.EMPL_SURNAME ASC;

CREATE TABLE T_DOCUMENTS (
DOCS_ID INT NOT NULL AUTO_INCREMENT,
EMPL_ID INT NOT NULL,
DOCS_NAME VARCHAR(100) NOT NULL,
DOCS_TYPE VARCHAR(50) NOT NULL,
PRIMARY KEY (DOCS_ID));

ALTER TABLE T_DOCUMENTS
ADD INDEX FK_DOCS_EMPL (EMPL_ID),
ADD CONSTRAINT FK_DOCS_EMPL
FOREIGN KEY (EMPL_ID)
REFERENCES T_EMPLOYEES (EMPL_ID);

INSERT INTO T_DOCUMENTS
(EMPL_ID, DOCS_NAME, DOCS_TYPE)
VALUES
(3, 'Titulo', 'PDF'),
(3, 'Curriculum', 'DOC'),
(3, 'Certificado OCP', 'PDF'),
(3, 'Matriz conocimientos', 'XLS'),
(3, 'Grado', 'PDF'),
(6, 'Curriculum', 'DOC'),
(7, 'Certificado MS', 'PDF'),
(8, 'Titulo', 'PDF');

