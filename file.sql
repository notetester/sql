CREATE SEQUENCE SNSBOARD_SEQ INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE TABLE SNSBOARD(
    BNO NUMBER(10,0) DEFAULT SNSBOARD_SEQ.NEXTVAL NOT NULL CONSTRAINT SNSBOARD_PK PRIMARY KEY,
    WRITER VARCHAR2(50) DEFAULT 'DEFAULT_WRITER' NOT NULL,
    CONTENT VARCHAR2(2000) DEFAULT 'DEFAULT_CONTENT' NOT NULL,
    FILELOCA VARCHAR2(200) DEFAULT 'DEFAULT_FILELOCA' NOT NULL,--������ ����� ��ġ
    FILENAME VARCHAR2(200) DEFAULT 'DEFAULT_FILENAME' NOT NULL,--���� �̸�
    FILEREALNAME VARCHAR2(200) DEFAULT 'DEFAULT_FILEREALNAME' NOT NULL,--���� ���� �̸�
    REGDATE DATE DEFAULT SYSDATE NOT NULL
);