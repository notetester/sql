--서브쿼리
--서브쿼리 사용방법 ()안에 명시함. 서브쿼리절의 리턴행이 1줄 이하여야 합니다.
--서브쿼리절을 먼저 해석하면 됩니다.
SELECT SALARY FROM EMPLOYEES WHERE FIRST_NAME='Nancy';
SELECT *
FROM EMPLOYEES
WHERE SALARY>=(SELECT SALARY 
                FROM EMPLOYEES 
                WHERE FIRST_NAME='Nancy');
SELECT JOB_ID FROM EMPLOYEES WHERE EMPLOYEE_ID=103;
--사원번호가 103번인 사람과 직무가 동일한 사람을 찾는 서브쿼리
SELECT *
FROM EMPLOYEES
WHERE JOB_ID=(SELECT JOB_ID 
                FROM EMPLOYEES 
                WHERE EMPLOYEE_ID=103);
--서브쿼리의 리턴형이 여러개라면 일반적인 비교 연산자로 처리할 수 없습니다.
SELECT JOB_ID FROM EMPLOYEES WHERE DEPARTMENT_ID=90;
SELECT *
FROM EMPLOYEES
WHERE JOB_ID=(SELECT JOB_ID 
                FROM EMPLOYEES 
                WHERE DEPARTMENT_ID=90);
--다중행 서브쿼리 (서브쿼리 결과 행이 여러개 나올 떄) IN,ANY,ALL
SELECT *
FROM EMPLOYEES
WHERE JOB_ID IN (SELECT JOB_ID
                FROM EMPLOYEES
                WHERE DEPARTMENT_ID=90);
SELECT SALARY FROM EMPLOYEES WHERE FIRST_NAME='David';
SELECT *
FROM EMPLOYEES
WHERE SALARY> ANY (SELECT SALARY FROM EMPLOYEES WHERE FIRST_NAME='David');
SELECT *
FROM EMPLOYEES
WHERE SALARY> ALL (SELECT SALARY FROM EMPLOYEES WHERE FIRST_NAME='David');
--스칼라서브쿼리 (SELECT 구문에 서브쿼리가 오는 것, LEFT OUTER JOIN이랑 같은 결과)
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
SELECT *
FROM EMPLOYEES E
LEFT OUTER JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;
SELECT 
    FIRST_NAME,
    DEPARTMENT_NAME
FROM EMPLOYEES E
LEFT OUTER JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;
SELECT 
    FIRST_NAME,
    (SELECT DEPARTMENT_NAME
    FROM DEPARTMENTS D
    WHERE D.DEPARTMENT_ID=E.DEPARTMENT_ID),
    (SELECT DEPARTMENT_ID
    FROM DEPARTMENTS D
    WHERE D.DEPARTMENT_ID=E.DEPARTMENT_ID)
FROM EMPLOYEES E;
SELECT * FROM EMPLOYEES;
SELECT * FROM JOBS;
SELECT *
FROM EMPLOYEES E
LEFT OUTER JOIN JOBS J
ON E.JOB_ID=J.JOB_ID;
SELECT 
    EMPLOYEE_ID,
    E.JOB_ID,
    JOB_TITLE
FROM EMPLOYEES E
LEFT OUTER JOIN JOBS J
ON E.JOB_ID=J.JOB_ID
ORDER BY EMPLOYEE_ID;
SELECT
    EMPLOYEE_ID,
    E.JOB_ID,
    (SELECT JOB_TITLE FROM JOBS J WHERE J.JOB_ID=E.JOB_ID) AS JOB_TITLE
FROM EMPLOYEES E
ORDER BY EMPLOYEE_ID;
--인라인 뷰(FROM구문에 서브쿼리가 오는 것)
SELECT ROWNUM,FIRST_NAME,SALARY FROM EMPLOYEES ORDER BY SALARY;
SELECT 
    ROWNUM,
    FIRST_NAME,
    SALARY
FROM(SELECT ROWNUM,FIRST_NAME,SALARY
    FROM EMPLOYEES
    ORDER BY SALARY
)
WHERE ROWNUM>0 AND ROWNUM<=10;
SELECT 
    ROWNUM,
    FIRST_NAME,
    SALARY
FROM(SELECT ROWNUM,FIRST_NAME,SALARY
    FROM EMPLOYEES
    ORDER BY SALARY
)
WHERE ROWNUM BETWEEN 1 AND 10;
SELECT 
    ROWNUM,
    FIRST_NAME,
    SALARY
FROM(SELECT ROWNUM,FIRST_NAME,SALARY
    FROM EMPLOYEES
    ORDER BY SALARY
)
WHERE ROWNUM BETWEEN 11 AND 20;
SELECT 
    ROWNUM,
    FIRST_NAME,
    SALARY
FROM(SELECT ROWNUM,FIRST_NAME,SALARY
    FROM EMPLOYEES
    ORDER BY SALARY
)
WHERE ROWNUM>10 AND ROWNUM<=20;
SELECT
    ROWNUM AS RONUM,
    RNUM,
    R,
    FIRST_NAME,
    SALARY
FROM(
    SELECT 
        ROWNUM AS RNUM,
        R,
        FIRST_NAME,
        SALARY
    FROM(SELECT ROWNUM AS R,FIRST_NAME,SALARY
        FROM EMPLOYEES
        ORDER BY SALARY
    )
)
WHERE RNUM>10 AND RNUM<=20;
--3중 쿼리(페이징 쿼리)
SELECT *
FROM(SELECT ROWNUM RN,
            EMPLOYEE_ID,
            FIRST_NAME,
            LAST_NAME,
            EMAIL
    FROM (SELECT * 
            FROM EMPLOYEES 
            ORDER BY SALARY)
)
WHERE RN>10 AND RN<=20;
SELECT *
FROM(
    SELECT
        ROWNUM RN,
        EMPLOYEE_ID,
        FIRST_NAME,
        LAST_NAME,
        DEPARTMENT_NAME
    FROM(
        SELECT 
            EMPLOYEE_ID,
            FIRST_NAME,
            LAST_NAME,
            DEPARTMENT_NAME
        FROM EMPLOYEES E
        JOIN DEPARTMENTS D
        ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
        ORDER BY EMPLOYEE_ID ASC
    )
)
WHERE RN>20 AND RN<=30;
SELECT *
FROM EMPLOYEES E
JOIN (SELECT *
        FROM DEPARTMENTS) D
ON D.DEPARTMENT_ID=E.DEPARTMENT_ID;