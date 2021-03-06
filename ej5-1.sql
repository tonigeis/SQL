use db_empl;

ALTER TABLE T_EMPLOYEES
	ADD INDEX FK_EMPL_OFFC (OFFC_ID),
	ADD CONSTRAINT FK_EMPL_OFFC
		FOREIGN KEY (OFFC_ID)
		REFERENCES T_OFFICES (OFFC_ID);
        
ALTER TABLE T_EMPLOYEES
	ADD CONSTRAINT FK_EMPL_KNLN
		FOREIGN KEY (KNLN_ID)
		REFERENCES T_KNOWLEDGE_LINES (KNLN_ID);
        
ALTER TABLE T_EMPLOYEES
ADD INDEX FK_EMPL_KNLN (KNLN_ID);
        
DESC T_OFFICES;
DESC T_KNOWLEDGE_LINES;
DESC T_EMPLOYEES;

SELECT * FROM T_EMPLOYEES;

UPDATE T_EMPLOYEES
SET OFFC_ID = 40
WHERE EMPL_ID = 3;

SELECT * FROM T_OFFICES;

DELETE FROM T_OFFICES
WHERE OFFC_ID = 10;

INSERT INTO T_EMPLOYEES
(KNLN_ID)
VALUES(40);

ALTER TABLE T_PROJECTS_EMPLOYEES
	ADD CONSTRAINT FK_PRJT_EMPL
		FOREIGN KEY (PRJT_ID)
		REFERENCES T_PROJECTS (PRJT_ID);
        
ALTER TABLE T_PROJECTS_EMPLOYEES
	ADD CONSTRAINT FK_PREM_EMPL
		FOREIGN KEY (EMPL_ID)
		REFERENCES T_EMPLOYEES (EMPL_ID);
        



