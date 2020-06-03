SELECT JOB_ID,COUNT(*) AS 사원수,AVG(SALARY) AS 월급의_평균 
FROM EMPLOYEES 
GROUP BY JOB_ID 
ORDER BY AVG(SALARY) DESC;

SELECT SUBSTR(HIRE_DATE,1,2) AS 입사_년도, COUNT(*) AS 사원수 
FROM EMPLOYEES 
GROUP BY SUBSTR(HIRE_DATE,1,2);

SELECT DEPARTMENT_ID AS 부서,AVG(SALARY) AS 평균_급여 
FROM EMPLOYEES 
WHERE SALARY>=1000 
GROUP BY DEPARTMENT_ID 
HAVING AVG(SALARY)>=2000;

SELECT DEPARTMENT_ID AS 부서,
        TRUNC(AVG(SALARY+(SALARY*COMMISSION_PCT)),2) AS 월급의_평균,
        SUM(SALARY+(SALARY*COMMISSION_PCT)) AS 월급의_합계,
        COUNT(*) 
FROM EMPLOYEES 
WHERE COMMISSION_PCT IS NOT NULL 
GROUP BY DEPARTMENT_ID;