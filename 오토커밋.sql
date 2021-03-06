--트랜잭션
--커밋확인
SHOW AUTOCOMMIT;
--오토커밋 온
SET AUTOCOMMIT ON;
--오토커밋 오프
SET AUTOCOMMIT OFF;
CREATE TABLE DEPTS AS SELECT * FROM DEPARTMENTS;
SELECT * FROM DEPTS;
DELETE FROM DEPTS;
ROLLBACK;
DELETE FROM DEPTS WHERE DEPARTMENT_ID=10;
--세이브포인트
SAVEPOINT DELETE_10;
DELETE FROM DEPTS WHERE DEPARTMENT_ID=20;
ROLLBACK TO SAVEPOINT DELETE_10;
--커밋이후에는 어떤 방법으로도 되돌릴 수 없음.
COMMIT;