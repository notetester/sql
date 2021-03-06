CREATE TABLE BOARD(
    BNO NUMBER(10,0) DEFAULT BOARD_SEQ.NEXTVAL NOT NULL CONSTRAINT BOARD_BNO_PK PRIMARY KEY,
    WRITER VARCHAR2(50) DEFAULT 'DEFAULT_WRITER' NOT NULL,
    TITLE VARCHAR2(200) DEFAULT 'DEFAULT_TITLE' NOT NULL,
    CONTENT VARCHAR2(2000) DEFAULT 'DEFAULT_CONTENT' NOT NULL,
    REGDATE DATE DEFAULT SYSDATE NOT NULL,
    HIT NUMBER(10,0) DEFAULT 0 NOT NULL
);
ALTER TABLE BOARD ADD CONSTRAINT BOARD_BNO_PK PRIMARY KEY (BNO);
CREATE SEQUENCE BOARD_SEQ INCREMENT BY 1 START WITH 1;
INSERT INTO BOARD (REGDATE) VALUES (SYSDATE);
DROP TABLE BOARD;
DROP SEQUENCE BOARD_SEQ;
select * from board order by bno desc;