--1번-1
SELECT *
FROM EMPLOYEES
WHERE SALARY>(SELECT AVG(SALARY)
                FROM EMPLOYEES
);
--1번-2
SELECT COUNT(*)
FROM EMPLOYEES
WHERE SALARY>(SELECT AVG(SALARY)
                FROM EMPLOYEES
);
--1번-3
SELECT *
FROM EMPLOYEES
WHERE SALARY>(SELECT AVG(SALARY)
                FROM EMPLOYEES
                WHERE JOB_ID='IT_PROG'
);
--2번
SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID
                        FROM DEPARTMENTS
                        WHERE MANAGER_ID=100);
--3번-1
SELECT *
FROM EMPLOYEES
WHERE MANAGER_ID>(SELECT MANAGER_ID
                    FROM EMPLOYEES
                    WHERE FIRST_NAME='Pat');
--3번-2
SELECT *
FROM EMPLOYEES
WHERE MANAGER_ID IN(SELECT MANAGER_ID
                    FROM EMPLOYEES
                    WHERE FIRST_NAME='James');
--4번
SELECT 행_번호,이름
FROM(SELECT ROWNUM AS 행_번호,FIRST_NAME AS 이름
     FROM(SELECT *
          FROM EMPLOYEES
          ORDER BY FIRST_NAME DESC))
WHERE 행_번호 BETWEEN 41 AND 50;
--5번
SELECT 행_번호,사원_ID,이름,번호,입사일
FROM(SELECT ROWNUM AS 행_번호,
            EMPLOYEE_ID AS 사원_ID,
            FIRST_NAME AS 이름,
            PHONE_NUMBER AS 번호,
            HIRE_DATE AS 입사일
     FROM(SELECT *
          FROM EMPLOYEES
          ORDER BY HIRE_DATE ASC))
WHERE 행_번호 BETWEEN 31 AND 40;
--6번
SELECT EMPLOYEE_ID AS 직원아이디,
        FIRST_NAME||' '||LAST_NAME AS 이름,
        E.DEPARTMENT_ID AS 부서아이디,
        DEPARTMENT_NAME AS 부서명
FROM EMPLOYEES E
LEFT OUTER JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
ORDER BY EMPLOYEE_ID ASC;
--7번
SELECT EMPLOYEE_ID AS 직원아이디,
        FIRST_NAME||' '||LAST_NAME AS 이름,
        DEPARTMENT_ID AS 부서아이디,
        (SELECT DEPARTMENT_NAME FROM DEPARTMENTS D WHERE E.DEPARTMENT_ID=D.DEPARTMENT_ID) AS 부서명
FROM EMPLOYEES E
ORDER BY EMPLOYEE_ID ASC;
--8번
SELECT DEPARTMENT_ID AS 부서아이디,
       DEPARTMENT_NAME AS 부서이름,
       MANAGER_ID AS 메니저아이디,
       D.LOCATION_ID AS 로케이션아이디,
       STREET_ADDRESS AS 스트릿_어드레스,
       POSTAL_CODE AS 포스트_코드,
       CITY AS 시티
FROM DEPARTMENTS D
LEFT OUTER JOIN LOCATIONS L
ON D.LOCATION_ID=L.LOCATION_ID
ORDER BY D.DEPARTMENT_ID ASC;