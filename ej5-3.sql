CREATE VIEW v_employee_office
(CODI_PROJECTE, NOM_PROJECTE, NUMERO, NOM, COGNOMS)
AS
SELECT p.PRJT_CODE, p.PRJT_NAME, e.EMPL_NUMBER, e.EMPL_FORNAME, e.EMPL_SURNAME
FROM t_projects p
INNER JOIN t_projects_employees pe
	ON p.PRJT_ID = pe.PRJT_ID
INNER JOIN t_employees e
	ON e.EMPL_ID = pe.EMPL_ID
   
SELECT * FROM v_employee_office

SELECT * FROM v_employee_office
WHERE CODI_PROJECTE LIKE 'EXT%'
    