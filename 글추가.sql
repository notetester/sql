INSERT INTO BOARD(BNO,WRITER,TITLE,CONTENT) VALUES(BOARD_SEQ.NEXTVAL,'ADMIN','TEST','TEST');
COMMIT;
SELECT*FROM(SELECT ROWNUM RN,BNO,WRITER,TITLE,CONTENT,REGDATE,HIT FROM(SELECT*FROM BOARD ORDER BY BNO DESC))WHERE RN>10 AND RN<=20;
SELECT COUNT(*) AS TOTAL FROM BOARD;