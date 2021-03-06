SELECT EMPLOYEE_ID,FIRST_NAME,HIRE_DATE,SALARY FROM EMPLOYEES;
SELECT FIRST_NAME||' '||LAST_NAME AS NAME FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID=50;
SELECT FIRST_NAME,DEPARTMENT_ID,JOB_ID FROM EMPLOYEES WHERE DEPARTMENT_ID=50;
SELECT FIRST_NAME,SALARY,SALARY+300 FROM EMPLOYEES;
SELECT FIRST_NAME,SALARY FROM EMPLOYEES WHERE SALARY>10000;
SELECT FIRST_NAME,JOB_ID,COMMISSION_PCT FROM EMPLOYEES WHERE COMMISSION_PCT IS NOT NULL;
SELECT FIRST_NAME,HIRE_DATE,SALARY FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '03/01/01' AND '03/12/31';
SELECT FIRST_NAME,HIRE_DATE,SALARY FROM EMPLOYEES WHERE HIRE_DATE LIKE '03%';
SELECT FIRST_NAME,SALARY FROM EMPLOYEES ORDER BY SALARY DESC;
SELECT FIRST_NAME,SALARY FROM EMPLOYEES WHERE DEPARTMENT_ID=60 ORDER BY SALARY DESC;
SELECT FIRST_NAME,JOB_ID FROM EMPLOYEES WHERE JOB_ID='IT_PROG' OR JOB_ID='SA_MAN';
SELECT FIRST_NAME||' '||LAST_NAME||' 사원의 급여는 '||SALARY||'달러 입니다' FROM EMPLOYEES WHERE FIRST_NAME='Steven' AND LAST_NAME='King';
SELECT FIRST_NAME,JOB_ID FROM EMPLOYEES WHERE JOB_ID LIKE '%MAN';
SELECT FIRST_NAME,JOB_ID FROM EMPLOYEES WHERE JOB_ID LIKE '%MAN' ORDER BY JOB_ID;