--LOWER(�ҹ���), INITCAP(�ձ��ڸ� �빮�ڷ�), UPPER(�빮��)
SELECT 'asdDEF' FROM DUAL;
SELECT 'asdDEF',LOWER('asdDEF'),UPPER('asdDEF') FROM DUAL;
SELECT LAST_NAME,LOWER(LAST_NAME),UPPER(LAST_NAME),INITCAP(LAST_NAME) FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE LOWER(LAST_NAME)='abel';
--LENGTH(����), INSTR(���� ã��)
SELECT 'abcdef' AS EXAMPLE, LENGTH('abcdef'), INSTR('abcdef','b') FROM DUAL;
SELECT FIRST_NAME, LENGTH(FIRST_NAME), INSTR(FIRST_NAME,'a') FROM EMPLOYEES;
--SUBSTR(���ڿ� �ڸ���), CONCAT(���ڿ� ����)
SELECT 'abcdef' AS EXAMPLE, SUBSTR('abcdef',1,3), CONCAT('�ȳ�','�ϼ���') FROM DUAL;
SELECT FIRST_NAME,SUBSTR(FIRST_NAME,1,2),CONCAT(FIRST_NAME,LAST_NAME) FROM EMPLOYEES;
--LPAD, RPAD (�� ���� �������ڿ��� ä���)
SELECT LPAD('abc',10,'*') FROM DUAL;
SELECT RPAD('abc',10,'*') FROM DUAL;
--LTRIM,RTRIM,TRIM(��������)
SELECT LTRIM('javascript_java','java') FROM DUAL;--���� ����
SELECT RTRIM('javascript_java','java') FROM DUAL;--���� ����
SELECT TRIM('    java    ') FROM DUAL;--�� �� ������ ����
--REPLACE(���ڿ�)
SELECT REPLACE('my dream is a president','president','doctor')FROM DUAL;
SELECT REPLACE('my dream is a president',' ','')FROM DUAL;
SELECT REPLACE(REPLACE('my dream is a president','president','doctor'),' ','')FROM DUAL;
SELECT REPLACE(CONCAT('hello ','world'),' ','')FROM DUAL;