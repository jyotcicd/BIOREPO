CREATE OR REPLACE SCHEMA COMPANY;

create or replace TABLE COMPANY_NAME (
	NAME VARCHAR(16777216),
	EMPLOYEECOUNT NUMBER(38,0)
);

CREATE OR REPLACE VIEW VWCOMPANYNAME AS SELECT * FROM COMPANY_NAME;

CREATE OR REPLACE PROCEDURE SPCOMPANYRECORD()
RETURNS VARCHAR(16777216)
LANGUAGE SQL
EXECUTE AS OWNER
AS '
BEGIN
    INSERT INTO COMPANY_NAME VALUES(''LIFESCIENCES'',20);
    INSERT INTO COMPANY_NAME VALUES(''TECHNOLOGY'',30);
    INSERT INTO COMPANY_NAME VALUES(''HOA'',50);
	INSERT INTO COMPANY_NAME VALUES(''TELECOM'',60);
	INSERT INTO COMPANY_NAME VALUES(''HR'',60);
	INSERT INTO COMPANY_NAME VALUES(''HOTEL'',70);
    INSERT INTO COMPANY_NAME VALUES(''SERVICES'',70);
    COMMIT;
    RETURN ''SUCCESS'';
END;
';

CALL SPCOMPANYRECORD();