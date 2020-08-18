CREATE SEQUENCE FOUND_SEQUENCE INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE TABLE FOUND(
    FOUND_NUMBER NUMBER(10,0) DEFAULT FOUND_SEQUENCE.NEXTVAL NOT NULL CONSTRAINT FOUND_PK PRIMARY KEY,
    FOUND_PLACE VARCHAR2(50) DEFAULT 'DEFAULT_FOUND_PLACE' NOT NULL,
    MEMBERS_ID VARCHAR2(30) DEFAULT 'DEFAULT_MEMBERS_ID' NOT NULL,
    FOUND_HPNUM1 VARCHAR2(50) DEFAULT 'DEFAULT_FOUND_HPNUM1' NOT NULL,
    FOUND_HPNUM2 VARCHAR2(50) DEFAULT 'DEFAULT_FOUND_HPNUM2' NOT NULL,
    FOUND_HPNUM3 VARCHAR2(50) DEFAULT 'DEFAULT_FOUND_HPNUM3' NOT NULL,
    FOUND_EMAIL VARCHAR2(50) DEFAULT 'DEFAULT_FOUND_EMAIL' NOT NULL,
    FOUND_TITLE VARCHAR2(30) DEFAULT 'DEFAULT_FOUND_TITLE' NOT NULL,
    FOUND_CONTENT VARCHAR2(3000) DEFAULT 'DEFAULT_FOUND_CONTENT' NOT NULL,
    FOUND_REGDATE DATE DEFAULT SYSDATE NOT NULL,
    FOUND_HIT NUMBER(10,0) DEFAULT 0 NOT NULL
);
CREATE SEQUENCE LIKES_SEQUENCE INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE TABLE LIKES(
    LIKES_NUM NUMBER(10,0) DEFAULT LIKES_SEQUENCE.NEXTVAL NOT NULL CONSTRAINT LIKES_PK PRIMARY KEY,
    LIKES_NUMBER NUMBER(10,0) DEFAULT 0 NOT NULL,
    MEMBERS_ID VARCHAR2(50) DEFAULT 'DEFAULT_MEMBERS_ID' NOT NULL,
    MOVIE_CODE NUMBER(10,0) DEFAULT 0 NOT NULL
);
CREATE SEQUENCE MOVIE_SEQUENCE INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE TABLE MOVIE(
    MOVIE_CODE NUMBER(30,0) DEFAULT MOVIE_SEQUENCE.NEXTVAL NOT NULL CONSTRAINT MOVIE_PK PRIMARY KEY,
    MEMBERS_ID VARCHAR2(30) DEFAULT 'DEFAULT_MEMBERS_ID' NOT NULL,
    MOVIE_TITLE VARCHAR2(30) DEFAULT 'DEFAULT_MOVIE_TITLE' NOT NULL,
    MOVIE_PERSON NUMBER(30,0) DEFAULT 0 NOT NULL,
    RESERVE_RATE NUMBER(30,0) DEFAULT 0 NOT NULL,
    STACK_COUNT NUMBER(30,0) DEFAULT 0 NOT NULL,
    MOVIE_CONTENT VARCHAR2(3000) DEFAULT 'DEFAULT_MOVIE_CONTENT' NOT NULL,
    MOVIE_CONTENT1 VARCHAR2(4000) DEFAULT 'DEFAULT_MOVIE_CONTENT1' NOT NULL,
    MOVIE_CONTENT2 VARCHAR2(4000) DEFAULT 'DEFAULT_MOVIE_CONTENT2' NOT NULL,
    MOVIE_PREFERENCE VARCHAR2(200) DEFAULT 'DEFAULT_MOVIE_PREFERENCE' NOT NULL,
    MOVIE_IMAGE VARCHAR2(3000) DEFAULT 'DEFAULT_MOVIE_IMAGE' NOT NULL,
    MOVIE_REGDATE DATE DEFAULT SYSDATE NOT NULL,
    MOVIE_HIT NUMBER(10,0) DEFAULT 0 NOT NULL
);
drop table movie;


CREATE SEQUENCE MRNO_SEQUENCE INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE TABLE MISSREPLY(
    MRNO NUMBER(10,0) DEFAULT MRNO_SEQUENCE.NEXTVAL NOT NULL CONSTRAINT MISS_PK PRIMARY KEY,
    MNO NUMBER(10,0) DEFAULT 0 NOT NULL,
    REPLY VARCHAR2(200) DEFAULT 'D' NOT NULL,
    REPLYID VARCHAR2(50) DEFAULT 'D' NOT NULL,
    MEMBERS_ID VARCHAR2(30) DEFAULT 'DEFAULT_MEMBERS_ID' NOT NULL,
    REPLYPW VARCHAR2(50) DEFAULT 'D' NOT NULL,
    REPLYDATE DATE DEFAULT SYSDATE NOT NULL
);
CREATE TABLE MOVIEREPLY (
    RNO NUMBER(10,0) DEFAULT 0 NOT NULL,
    MNO NUMBER(10,0) DEFAULT 0 NOT NULL,
    REPLY VARCHAR2(200) DEFAULT 'D' NOT NULL,
    REPLYID VARCHAR2(50) DEFAULT 'D' NOT NULL,
    MEMBERS_ID VARCHAR2(30) DEFAULT 'DEFAULT_MEMBERS_ID' NOT NULL,
    REPLYPW VARCHAR2(50) DEFAULT 'D' NOT NULL,
    REPLYDATE DATE DEFAULT SYSDATE NOT NULL,
    PRIMARY KEY(RNO)
);
CREATE SEQUENCE RNO_SEQ INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE TABLE NOTICEBOARD(
TNO NUMBER(10,0) DEFAULT 0 NOT NULL,
TITLE VARCHAR2(50) DEFAULT 'D' NOT NULL,
WRITER VARCHAR2(50) DEFAULT 'D' NOT NULL,
CONTENT VARCHAR2(300) DEFAULT 'D' NOT NULL,
REGDATE DATE DEFAULT SYSDATE NOT NULL,
PRIMARY KEY(TNO)
);

CREATE SEQUENCE TNO_SEQ INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE SEQUENCE POPCORN_CODE_SEQUENCE INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE TABLE POPCORN(
    POPCORN_CODE NUMBER(30,0) DEFAULT POPCORN_CODE_SEQUENCE.NEXTVAL NOT NULL CONSTRAINT POPCORN_CODE_PK PRIMARY KEY,
    MEMBERS_ID VARCHAR2(50) DEFAULT 'DEFAULT_MEMBERS_ID' NOT NULL,
    POPCORN_TITLE VARCHAR2(30) DEFAULT 'DEFAULT_POPCORN_TITLE' NOT NULL,
    POPCORN_TITLE1 VARCHAR2(200) DEFAULT 'DEFAULT_POPCORN_TITLE' NOT NULL,
    POPCORN_TITLE2 VARCHAR2(500) DEFAULT 'DEFAULT_POPCORN_TITLE' NOT NULL,
    POPCORN_CONTENT VARCHAR2(3000) DEFAULT 'DEFAULT_POPCORN_CONTENT' NOT NULL,
    POPCORN_CONTENT1 VARCHAR2(3500) DEFAULT 'DEFAULT_POPCORN_CONTENT' NOT NULL,
    POPCORN_CONTENT2 VARCHAR2(3500) DEFAULT 'DEFAULT_POPCORN_CONTENT' NOT NULL,
    POPCORN_CONTENT3 VARCHAR2(3500) DEFAULT 'DEFAULT_POPCORN_CONTENT' NOT NULL,
    POPCORN_IMAGE VARCHAR2(3500) DEFAULT 'DEFAULT_POPCORN_IMAGE' NOT NULL,
    POPCORN_PRICE NUMBER(10,0) DEFAULT 1000 NOT NULL,
    POPCORN_REGDATE DATE DEFAULT SYSDATE NOT NULL,
    POPCORN_HIT NUMBER(10,0) DEFAULT 0 NOT NULL
);
CREATE SEQUENCE QNA_SEQUENCE INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE TABLE QNA(
    QNA_NUMBER NUMBER(10,0) DEFAULT QNA_SEQUENCE.NEXTVAL NOT NULL CONSTRAINT QNA_PK PRIMARY KEY,
    QNA_PLACE VARCHAR2(50) DEFAULT 'D' NOT NULL,
    MEMBERS_ID VARCHAR2(30) DEFAULT 'DEFAULT_MEMBERS_ID' NOT NULL,
    QNA_HPNUM1 VARCHAR2(50) DEFAULT 'D' NOT NULL,
    QNA_HPNUM2 VARCHAR2(50) DEFAULT 'D' NOT NULL,
    QNA_HPNUM3 VARCHAR2(50) DEFAULT 'D' NOT NULL,
    QNA_EMAIL VARCHAR2(50) DEFAULT 'D' NOT NULL,
    QNA_TITLE VARCHAR2(30) DEFAULT 'DEFAULT_QNA_TITLE' NOT NULL,
    QNA_CONTENT VARCHAR2(3000) DEFAULT 'DEFAULT_QNA_CONTENT' NOT NULL,
    QNA_REGDATE DATE DEFAULT SYSDATE NOT NULL,
    QNA_HIT NUMBER(10,0) DEFAULT 0 NOT NULL
);
CREATE TABLE QNAREPLY (
    QRNO NUMBER(10,0) DEFAULT 0 NOT NULL,
    QNO NUMBER(10,0) DEFAULT 0 NOT NULL,
    REPLY VARCHAR2(200) DEFAULT 'D' NOT NULL,
    REPLYID VARCHAR2(50) DEFAULT 'D' NOT NULL,
    MEMBERS_ID VARCHAR2(30) DEFAULT 'DEFAULT_MEMBERS_ID' NOT NULL,
    REPLYPW VARCHAR2(50) DEFAULT 'D' NOT NULL,
    REPLYDATE DATE DEFAULT SYSDATE NOT NULL,
    PRIMARY KEY(QRNO)
);

CREATE SEQUENCE QRNO_SEQ INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE TABLE MEMBERS(
    MEMBERS_ID VARCHAR2(30) DEFAULT 'DEFAULT_MEMBERS_ID' NOT NULL CONSTRAINT MEMBERS_PK PRIMARY KEY,
    MEMBERS_PW VARCHAR2(30) DEFAULT 'DEFAULT_MEMBERS_PW' NOT NULL,
    MEMBERS_NAME VARCHAR2(30) DEFAULT 'DEFAULT_MEMBERS_NAME' NOT NULL,
    MEMBERS_NICKNAME VARCHAR2(30) DEFAULT 'DEFAULT_MEMBERS_NICKNAME' NOT NULL,
    MEMBERS_PHONE VARCHAR2(30) DEFAULT '01099999999' NOT NULL,
    MEMBERS_EMAIL VARCHAR2(30) DEFAULT 'MEM@CINEMA.COM' NOT NULL,
    MEMBERS_ADDRESS_NUMBER VARCHAR2(100) DEFAULT 'DEFAULT_MEMBERS_ADDRESS_NUMBER' NOT NULL,
    MEMBERS_ADDRESS_BASIC VARCHAR2(100) DEFAULT 'DEFAULT_MEMBERS_ADDRESS_BASIC' NOT NULL,
    MEMBERS_ADDRESS_DETAIL VARCHAR2(100) DEFAULT 'DEFAULT_MEMBERS_ADDRESS_DETAIL' NOT NULL,
    ADDRZIPNUM VARCHAR2(100) DEFAULT 'DEFAULT_MEMBERS_ADDRESS_NUMBER' NOT NULL,
    ADDRBASIC VARCHAR2(100) DEFAULT 'DEFAULT_MEMBERS_ADDRESS_BASIC' NOT NULL,
    ADDRDETAIL VARCHAR2(100) DEFAULT 'DEFAULT_MEMBERS_ADDRESS_DETAIL' NOT NULL,
    MEMBERS_GRADE VARCHAR2(30) DEFAULT 'NORMAL' NOT NULL,
    MEMBERS_VIP VARCHAR2(30) DEFAULT 'NORMAL' NOT NULL,
    MEMBERS_STATUS VARCHAR2(30) DEFAULT 'NORMAL' NOT NULL,
    MEMBERS_MONEY NUMBER(10,0) DEFAULT 0 NOT NULL,
    MEMBERS_POINT NUMBER(10,0) DEFAULT 0 NOT NULL,
    MEMBERS_INFORMATION VARCHAR2(3000) DEFAULT 'DEFAULT_MEMBERS_INFORMATION' NOT NULL,
    MEMBERS_IMAGE VARCHAR2(3000) DEFAULT 'DEFAULT_MEMBERS_IMAGE' NOT NULL,
    MEMBERS_REGDATE DATE DEFAULT SYSDATE NOT NULL,
    TICKET NUMBER(10,0) DEFAULT 0 NOT NULL
);
CREATE TABLE VOTE(
    VOTE_NUM NUMBER(10,0) DEFAULT 0 NOT NULL CONSTRAINT VOTE_PK PRIMARY KEY,
    VOTE_NUMBER NUMBER(10,0) DEFAULT 0 NOT NULL,
    VOTE_NAME VARCHAR2(30) DEFAULT 'DEFAULT_VOTE_NAME' NOT NULL,
    VOTE_CNT NUMBER(10,0) DEFAULT 0 NOT NULL,
    VOTE_USERID VARCHAR2(30) DEFAULT 'DEFAULT_MEMBERS_ID' NOT NULL,
    MEMBERS_ID VARCHAR2(30) DEFAULT 'DEFAULT_MEMBERS_ID' NOT NULL,
    VOTE_IMG VARCHAR2(300) DEFAULT 'DEFAULT.jpg' NOT NULL,
    VOTE_IMAGE VARCHAR2(300) DEFAULT 'DEFAULT.jpg' NOT NULL,
    VOTE_REGDATE DATE DEFAULT SYSDATE NOT NULL
);
insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('k-1','kkk123', '����','1��',3);
insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('k-2','kkk123', '����','2��',3);
insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('k-3','kkk123', '����','3��',3);

insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('h-1','kkk123', 'ȫ��','1��',3);
insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('h-2','kkk123', 'ȫ��','2��',3);
insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('h-3','kkk123', 'ȫ��','3��',3);

insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('i-1','kkk123', '�ϻ�','1��',3);
insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('i-2','kkk123', '�ϻ�','2��',3);
insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('i-3','kkk123', '�ϻ�','MX��',3);
insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','�ݵ�',0,0,200,'�帣:�׼�
��� / �ѱ�2020.07.15 ����116�� ����: ����ȣ
�⿬:������, ������, ����ȿ, �����, ����ȯ','�ó�ý� ����̹��� �糭 �� �� 4�� ������ ������ �ٽ� ����! 4�� ��, ���� ��ü�� �۾������ ����̹��� �糭���� ����� Ż���ߴ� ��������(������). �ٱ��������κ��� ö���� ���� �ݵ��� �ٽ� ���� �ϴ� ���� �� ���� ������ �޴´�. ���� �ð� ���� ������ Ʈ���� Ȯ���� �ݵ��� ���� ���;� �ϴ� �̼��� �����ϴ� �� �ΰ����� ����� 631�δ�� 4�� ������ ���� �ż��� ��Ը� ���� ������ ���� ������ �����Ѵ�. ��ü������ ����, ���㰡 �� ������ ��Ƴ��� ��������(������) ������ �������� ���⸦ ����� ����ϰ� �̵�� �Բ� �ݵ��� Ż���� �� �ִ� ������ ��ȸ�� ���� �Ѵ�. �ǵ��ƿ� ��, ��Ƴ��� �� �׸��� ���Ĺ��� �� �ʻ��� ������ ���۵ȴ�!',
'����: ���� 40.0% | ���� 60.1%
����: 10��: 5.2% | 20��: 36.5% | 30��: 30.5% | 40��: �̻� 27.9%','�ݵ�.jpg',sysdate,0);

insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','�¿���',0,0,200,'����:�� ��ĵ�� /�⿬:�⿬�� Ȧ����(�̾� ����Ʈǲ ��Ҹ�), ũ���� ����(�߸� ����Ʈǲ ��Ҹ�), �ٸ��� ���̽� �巹���۽�(�η� ����Ʈǲ ��Ҹ�)','������ ����� �� �Ϸ�, ���� ������ ���� ����� �ֳ���?
������ ����� ���� ��� �ִ� ����� ���� ��� ���ݴ��� �� ������
 ö�� ���� ���̾ȡ�(�� Ȧ����)�� �ǿ��游 �� ���߸���(ũ���� ����).
 
 ���̾ȡ��� �¾�� �󱼵� �� �� ���� �ƺ��� �׸����ϴ� ��, ���������� ���� ������
 �ƺ��� ���� �����̸� �ް� �ȴ�. �׷��� �Ǽ���, �ƺ��� ���ʸ� ��ȯ��Ű�� ���Ⱑ �߻��ϴµ�!!
 
 �־��� �ð��� �� �Ϸ�, �� ������ �Ϻ��� ����� �ƺ��� ã�� ���� ������ ������
 �������� ������ �ǳʰ�, ��� ���츮�� ��Ʈ�� ���� ������ ���������
 ���� �ٸ� �������� ����, ���ǰ� �ε����� �ǰ�, ������ �߻��ϴµ���
 ���� �̵��� ������ ������ �̷� �� ������?
 
 ������ ���� ���, ���� ����� ������ ���ϴ�.',
'����: ���� 31% | ���� 69% ����: 4% 10�� 42% 20�� 33% 30�� 19% 40�� 1% 50���̻�','�¿���.jpg',sysdate,0);


insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','�˶��',0,0,200,'���� : ���� : ���� ��ġ / ��� : �޳� ������ , �� ���̽� , ������ ���� �帣 : ��庥ó, ����, ȯŸ�� / �⺻ : ��ü, 128��, �̱� ���� : 2020.07.22(�簳��) 4DX����',
'�ӳ��� �縷 �� �ź��� �Ʊ׶�� �ձ��� �ô�. ������ ���˶���� ������ �����ġ��� �Ƿڷ� ���� ������ ã�� �����ٰ� ���ο��� �� ���� �ҿ��� ����ִ� ���ϸ� ������ �ǰ�, �ڽ��� ������ ������ �������� ������ ���ߴ� ���迡 �ָ����� �Ǵµ���',
'����: ���� 29.0% | ���� 41.0%
����: 10��: 2.6% | 20��: 38.0% | 30��: 28.4% | 40��: �̻� 30.3%',
'�˶��.jpg',sysdate,0);
insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','����ִ�',0,0,200,'�帣:�׼�
��� / �ѱ�2020.06.26 ����98�� ����: ������
�⿬:������, �ڽ���, �����, ������, ������',
'�ó�ý� ���κҸ� ������ ������� ���ݿ� ���� �Ҵɿ� ���� ����.

������ �� ä �ῡ�� �� ���ؿ졯(������)�� �ƹ��� ���� ���� ȥ�� ���� ���� �˰� �ȴ�. ������, ��������, ����, ��ȭ ��� ���� ���� ä ���� ��Ȳ. ������ ������ ������ �̾� �ּ����� �ķ����� �ٴ��� ���� �� �̻� ��Ƽ�� ������� ���ؿ졯. ������ �� ���� �ǳ��� ����Ʈ���� ������ �ñ׳��� �����´�. �� �ٸ� ������ ������(�ڽ���)�� ���� ��������� �˰� �� ���ؿ졯�� �Բ� ��Ƴ��� ���� ����� ã�� �����µ�...! �� ��Ƴ��ƾ� �Ѵ�

#About Movie
1 #���ѹα� ���� #���ͳ� ���� #�׵��� ���ٴ� ���� #ȥ�� �������� 2020�� ���� �ż��� ���� ������ <#����ִ�>�� ���κҸ� ������ ������� ������ �����ϸ� �����Ҵɿ� ���� ��� ������, ��������, ����, ��ȭ ��� ���� ���� ä Ȧ�� ����Ʈ�� ���� �̵��� �̾߱⸦ �׸� ���� ��������. ���� ���� �ٸ����� ����� �ῡ�� ��� �������� ������ ���� ä ����Ʈ�� �� �Ǿ����� �˰� �� ���ؿ졯. �������� �� ���ڱ��� ������ ���� ���� �� �ִٴ� �ҾȰ� ����, ������ �� �ȿ� ���� ���� ��Ƽ�⿣ �ξ��� ������ ���� ����, ���⿡ �������� �ߵ�� ���� �ܷο���� ������ ���ؿ졯�� ��Ȳ�� ������ ����� �ι��� ���� �ϻ����� �������� Ȧ�� �����ؾ� �Ѵٴ� �������� ��ȭ�� ���尨�� ������ �����븦 ���ÿ� �ڱ��Ѵ�. ���⿡ ������, �������̰� �ǽ��ָ�ŭ �߿��� �ʼ��簡 �Ǿ���� 2020��, �ܼ��� ������ ���� �ƴ϶� �����������ε� ������ �����ȴٴ� ������ ������ ������ ���� ����ȭ�� ��̸� ������. ���� ȥ�� �������ٴ� ���ؿ졯�� ������ �ؿ� ���ϴ� ����, �� �ٸ� �������� �������� �����ϸ� ���ο� ��ȯ�� �����ϴ� <#����ִ�>�� �ٸ� �������� ����ִٴ� ��Ǹ����ε� ����� ������ ���� �Ǵ� �� ����� ���� �ٸ� ������� ���⿡ �¼��� ������� ¥���� ������ �谨�� �����Ѵ�. Ư�� �� �������� ���, �޴��� ���� ������ ������ �յ���, ���̽���, ������, ��� ķ�� ��ǰ���� �Ƴ��α����� ���ǵ��� ������ ���� �������� Ȱ��Ǿ� �������� ��̿� ���԰��� ���� ���δ�. ���ѹα����� ���� ģ���� ������ ����Ʈ�� �� ����� ����, ����Ʈ�� ������ Ư�� ��ü�� ���� ����, ������ ������ ������ ��ġ�� �� ������ ������ �س��� ��ȭ�� ������ �������� �Ҿ�ִ� <#����ִ�>. ������ �����븦 �ڱ��ϴ� ������ ����� ����, �̸� �غ��ذ��� ������ �������� ���� ���ο� ���� �������� 2020�� ���� �������� ������� ���̴�.',

'����: ���� 60% | ���� 40%
����: 5% 10�� 40% 20�� 35% 30�� 14% 40�� 7% 50���̻�',
'����ִ�.jpg',sysdate,0);

insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','�㽩',0,0,200,'�帣:�׼�
109��/ �帣: ��� / �̱�, ĳ���� 2020.07.08 ���� ����: ���� ��ġ �⿬: �������� �׷�, ���� Ű���, ���� �κ�, �� ������, ����Ʈ ��Ű��','�Ǵ��� ��ī�Ӱ�, ��ħ�� ����ϰ�, �ൿ�� �����ϰ�!

�뼱�ĺ� ���ȸ���� Ʈ������ ������ ����
���������� ���� ��Ŀ �ޱ� �̸�(�������� �׷�)��
Ʈ������ ��ӵǴ� Ʈ���� �������� ȭ���� �߽ɿ� ����.

����, ���� ��Ŀ�� �׷�õ Į��(���� Ű���)��
����� �Ƿ��� ���ա��̶� �Ҹ��� �������� ȸ���� ����ϰ�
�̿� �ޱ��� ����, �߽� �ִ� ������ �����̽�
���϶� �����ǽ�(���� �κ�) ���� ����� ������ ���ϴµ���

�ִ� �Ƿ��� �������� ��ź����
���� �̵��� �����ϰ� ¥���� �������� ���۵ȴ�!',

'����: ���� 35.0% | ���� 65.0%
����: 10��: 1.9% | 20��: 33.7% | 30��: 34.6% | 40��: �̻� 29.8%',
'�㽩.jpg',sysdate,0);

insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','���ƿ�',0,0,200,
'�帣:�׼�
��� / 2020.07.15 ���� ���� : ����Ÿ ���� ��� : īȣ , ������
�帣 : ��� / �⺻ : 12�� �̻�, 092��, �Ϻ�
���� : 2020.07.22',
'������ �𸣴� ���� ��� �Ǿ���� ����, �ʵ� ����?��

�Ϻ��ϰ� ��ģ CF ���� ''������''(īȣ) �������� ����� ������ ��ȭ�� �����ο� ģ�� �������(������)�� ���� �����ڰ� ���Ѵ�. ���ư��� ���� �ʴ� �װ�������, ��¼��- ���������� ����! ���� ������ ��ģ ����� ����',
'����: ���� 45.0% | ���� 55.0%
����: 10��: 0.8% | 20��: 29.4% | 30��: 31.5% | 40��: �̻� 38.4%',
'���ƿ�.jpg',
sysdate,0);

insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','�ҳ������',0,0,200,'���� : ������ / ��� : �ֵ��� , �̾�õ�� �帣 : �θǽ�, ���, ���, ����, ���� / �⺻ : 15�� �̻�, 135��, �߱� ���� : 2020.07.09','���� ������ ����, �� �ʸ� ��ų�ԡ� ���踸 �� ġ�� ���� �λ��� �� �� �ִٰ� ����ġ�� ���󿡼� ��� �� ���� ���� ������ ���� �ҳ� ��þ�Ͽ����� ���ġ �ҳ� �����̡�. ����� ��ó�� �ܷο� ���� ���ο��� �����ϰ� �� �� ����� ������ �Ϸ� �յ� ��� ��, ��þ�Ͽ����� ���� �ڹٲ���� �Ŵ��� ��ǿ� �ָ����� �ȴ�. ��þ�Ͽ������� ����ϰ� �ູ�ϰ� ��� �ٶ�� �����̡��� �׳��� �׸��ڰ� �Ǿ� ��� ���� �ذ��ϱ�� ���� �Դµ��� ������. �� ������ ����, �ҳ������ ��.��',

'����: ���� 32.0% | ���� 68.0%
����: 10��: 2.6% | 20��: 41.8% | 30��: 26.5% | 40��: �̻� 29.8%','�ҳ����.jpg',sysdate,0);

insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','�ҵ���',0,0,200,'�帣: ������
2020.07.22 ����
���� : ��ī�� ���� ��� : ������ ����, ������ ���� �ִϾ�
�⺻ : 15�� �̻�, 097��, �̱�','���̷����� HNV-21, ġ���� 100%

���� ��� ���� �ӵ��� ������ ���������. ��� �� ���ڱ� ������ �� ���踦 ����� �ǹ��� ���̷���. ���� �����°� ������ ��',
'����: ���� 65.0% | ���� 35.0%
����: 10��: 0.5% | 20��: 19.5% | 30��: 50.0% | 40��: �̻� 30.0%','�ҵ���.jpg',sysdate,0);

insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','�Ƶ����',0,0,200,'�帣 : �׼�, ������
���� : ���� ī���ڽ� / ��� : ������ ī�罺 , ��Ż���� �� ������ , �罺 �����
�⺻ : û�ҳ� �����Ұ�, 115��, ������
���� : 2020.07.22','������ �װ�, ������ ������ �Ǿ���.�� ���� ���� �ƺ��� ó���� ������ ���۵ȴ�!

���� ī������ �Ͽ��� ���ľȡ��� ���� ���� � ���� ù �������� ���� ������ ��������� ������ ���� ���� �Ұ� �ȴ�. �ڽ��� ��� ���� �Ѿư� ������ ã�� �ں� ���� ������ �����ϴ� ���ľȡ�. ������ ����� �����ϰ� �İ����� �ϱ� ���� ��ǵ��� ���� ���� �������µ��� ����� ����, ���۵� ��� ������ ����� ���� �ִ�!',
'����: ���� 75.0% | ���� 25.0%
����: 10��: 5.0% | 20��: 20.5% | 30��: 55.5% | 40��: �̻� 19.0%','�Ƶ����.jpg',sysdate,0);
commit;
insert into noticeBoard(tno, title, writer, content) values (tno_seq.nextval,'�ȳ�','kkk123','�̺�Ʈ �Դϴ�');  
-- popcorn.xml�� �� �� 
--1--
 insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','�Ｎ�����޺�','����(R) 1 + ź������(R) 2 + �Ｎ���̿�¡�� ��or�ٸ� 1','����밡�ɱ���
�� �����������: ��õ����, ��Ʈ����


*��ȿ�Ⱓ*

�����Ϸκ��� 2�� �̳� ��� ����

���� ���� ��ȿ�Ⱓ�� �����Ϸκ��� 2���̸�, ���������� ������ ��� ���Ͽ��� ��ȯ �����մϴ�.


++�Ǹż���++

1ȸ 8�� ���Ű���

!!���� �� ���!!

�����Ϸκ��� 10�� �̳� ��� �����ϸ�, �κ���Ҵ� �Ұ����մϴ�.

�����Ϸκ��� 10�ϱ��� ��� �����ϸ�, �κ���Ҵ� �Ұ��մϴ�. (��Ű��ǰ�� ������� �Ұ�)','�� ����/���/ȯ�� �ȳ�

�� ��ǰ�� �����Ϸκ��� 10�� �̳��� ��� �����մϴ�.
- ��ȿ�Ⱓ�� �� ��ǰ�� ��ȿ�Ⱓ ������ ���� ��û�� �����ϸ�, 1ȸ ���� �� 3����(92��) ������ ����˴ϴ�.
- �����Ϸκ��� 5����� ��ȿ�Ⱓ ������ �����մϴ�.
- ���� ��ȿ�Ⱓ ���� �Ŀ��� �����ݾ��� 90%�� ���� ȯ�� ��û �����ϸ�, ȯ�� ó���� 7�� �̻��� �ð��� �ҿ�� �� �ֽ��ϴ�. (����ó: 1544-0070)
- ���� ��� �� ȯ�� ��û�� �̻�� ��ǰ�� ���� �����ϸ�, ����� ��ǰ�� ���ؼ��� �Ұ��մϴ�.
- �� ��ǰ�� �������� ȯ���� �Ұ��մϴ�.
 �� 2020�� 2�� 4�� ���� ���� ��ǰ�� ���Ͽ� ��ȿ�Ⱓ ���� ��û�� �����մϴ�.','�� ��밡�� ����
���� �� ��밡�� ������ �ݵ�� Ȯ�����ּ���!
- ���� : ����, ���빮, ����, ��, ���, ��Ͽ����Ű����, ����, ����, �̼�, �ڿ���, ȫ��, ȭ��
- ��õ/��� : ��罺Ÿ�ʵ�, �鼮, ��õ��Ÿ�ʵ��Ƽ, �д�, ����, ����, �����ιζ�, Ų�ؽ�, �������ǵ���, ����, �ϳ���Ÿ�ʵ�, �۵�, û��
- ����/��û : ����, ��������, �����߾ӷ�, ��������, õ��
- �λ�/��� : ���̰���, ������, �뱸(ĥ����), �뱸�ż���(���뱸), ����, ����, �λ��, �����ǿ���Ÿ, ���, â��, �ؿ��(���)

�� �̿� �ȳ�
�� ��ǰ�� ��� ������ �����Ϸκ��� 92�ϱ����Դϴ�.
- ��ȭ�� �������� ����� ������ȣ ���� �� ��ǰ���� ��ȯ�Ͻ� �� �ֽ��ϴ�.
- �� ��ǰ�� �¶��� ���� �Ǹ� ��ǰ���� ���� ���Ŵ� �Ұ��մϴ�.
- ������ ��ǰ�� ������ �ް��ڽ� > ����� ���ų��������� Ȯ���� �� �ֽ��ϴ�.
- ���� �� ������ ��, ũ��, ���� ���� �� �߰� �ݾ��� �߻��� �� �ֽ��ϴ�.
- ��� �̹����� ���� ��ǰ�� �ٸ� �� �ֽ��ϴ�.','https://img.megabox.co.kr/SharedImg/store/2020/03/17/4IdTDK4CS2PxFmMMJTozULSROsPzufHw_280.png',13000);

--2--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','�ݹݿ��̵��޺�','�ݹ�����(L) 1 + ���̵� 2','����밡�ɱ���
�� ���� ��� ����


*��ȿ�Ⱓ*

�����Ϸκ��� 2�� �̳� ��� ����

���� ���� ��ȿ�Ⱓ�� �����Ϸκ��� 2���̸�, ���������� ������ ��� ���Ͽ��� ��ȯ �����մϴ�.


++�Ǹż���++

1ȸ 8�� ���Ű���

!!���� �� ���!!

�����Ϸκ��� 10�� �̳� ��� �����ϸ�, �κ���Ҵ� �Ұ����մϴ�.

�����Ϸκ��� 10�ϱ��� ��� �����ϸ�, �κ���Ҵ� �Ұ��մϴ�. (��Ű��ǰ�� ������� �Ұ�)','�� ����/���/ȯ�� �ȳ�
�� ��ǰ�� �����Ϸκ��� 10�� �̳��� ��� �����մϴ�.
- ��ȿ�Ⱓ�� �� ��ǰ�� ��ȿ�Ⱓ ������ ���� ��û�� �����ϸ�, 1ȸ ���� �� 3����(92��) ������ ����˴ϴ�.
- �����Ϸκ��� 5����� ��ȿ�Ⱓ ������ �����մϴ�.
- ���� ��ȿ�Ⱓ ���� �Ŀ��� �����ݾ��� 90%�� ���� ȯ�� ��û �����ϸ�, ȯ�� ó���� 7�� �̻��� �ð��� �ҿ�� �� �ֽ��ϴ�. (����ó: 1544-0070)
- ���� ��� �� ȯ�� ��û�� �̻�� ��ǰ�� ���� �����ϸ�, ����� ��ǰ�� ���ؼ��� �Ұ��մϴ�.
- �� ��ǰ�� �������� ȯ���� �Ұ��մϴ�.
 �� 2020�� 2�� 4�� ���� ���� ��ǰ�� ���Ͽ� ��ȿ�Ⱓ ���� ��û�� �����մϴ�.','�� ��밡�� ���� : ���� ��� ����

�� �̿� �ȳ� �� ��ǰ�� ��� ������ �����Ϸκ��� 92�ϱ����Դϴ�. - ��ȭ�� �������� ����� ������ȣ ���� �� ��ǰ���� ��ȯ�Ͻ� �� �ֽ��ϴ�. - �� ��ǰ�� �¶��� ���� �Ǹ� ��ǰ���� ���� ���Ŵ� �Ұ��մϴ�. - ������ ��ǰ�� ������ �ް��ڽ� > ����� ���ų��������� Ȯ���� �� �ֽ��ϴ�. - ���� �� ������ ��, ũ��, ���� ���� �� �߰� �ݾ��� �߻��� �� �ֽ��ϴ�. - ��� �̹����� ���� ��ǰ�� �ٸ� �� �ֽ��ϴ�.
','https://img.megabox.co.kr/SharedImg/store/2020/03/17/nRR553PK3zMFtaiYav781vbrTZzIDpFO_280.png',13000);

--3--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','�Ϲݰ�����','�Ϲݰ����� 1��','����밡�ɱ���
�� �Ϻ� Ư����(����Ƽũ, MX, ���۽�ƮŬ��, Ű���) �� Ư����(���ڴ�, Ŀ�ü�, �ξ⼮ ��)�� �������Ұ� ������� ��� �Ұ��մϴ�.


*��ȿ�Ⱓ*

�����Ϸκ��� 2�� �̳� ��� ����

���� ���� ��ȿ�Ⱓ�� �����Ϸκ��� 2�� �Դϴ�.


++�Ǹż���++

1ȸ 8�� ���Ű���

!!���� �� ���!!

�����Ϸκ��� 10�� �̳� ��� �����ϸ�, �κ���Ҵ� �Ұ����մϴ�.

�����Ϸκ��� 10�ϱ��� ��� �����ϸ�, �κ���Ҵ� �Ұ��մϴ�. (��Ű��ǰ�� ������� �Ұ�)','�� ����/���/ȯ�� �ȳ�
�� ��ǰ�� �����Ϸκ��� 10�� �̳��� ��� �����մϴ�.
- ��ȿ�Ⱓ�� �� ��ǰ�� ��ȿ�Ⱓ ������ ���� ��û�� �����ϸ�, 1ȸ ���� �� 3����(92��) ������ ����˴ϴ�.
- �����Ϸκ��� 5����� ��ȿ�Ⱓ ������ �����մϴ�.
- ���� ��ȿ�Ⱓ ���� �Ŀ��� �����ݾ��� 90%�� ���� ȯ�� ��û �����ϸ�, ȯ�� ó���� 7�� �̻��� �ð��� �ҿ�� �� �ֽ��ϴ�. (����ó: 1544-0070)
- ���� ��� �� ȯ�� ��û�� �̻�� ��ǰ�� ���� �����ϸ�, ����� ��ǰ�� ���ؼ��� �Ұ��մϴ�.
- �� ��ǰ�� �������� ȯ���� �Ұ��մϴ�.
 �� 2020�� 2�� 4�� ���� ���� ��ǰ�� ���Ͽ� ��ȿ�Ⱓ ���� ��û�� �����մϴ�.','�� ���� ���� �� �������� �ڵ� ��ϵǸ�, ��ϵ� ���������� ��� �����մϴ�.
(��! ���� ���� PIN��ȣ�� ���� �� ����� ��ȯ�� ��� �� ��� �����մϴ�.)

�� ���� ���� ������ ��ȿ�Ⱓ�� �����Ϸκ��� 2���Դϴ�.

���� ��å�� ���� Ƽ�ϱݾ��� ���� �� �� ������ �̿� ���� ���� ȯ���� �Ұ��մϴ�. (����/�ɾ�/û�ҳ�/���/��Ƽ��/��� ��)

�� ���� īī�� �˸����� ���� ���� �˴ϴ�. (īī���� �̼�ġ �Ǵ� �̼��� ���� MMS�� �߼�)

�� ���� �ް��ڽ� Ȩ������, ����, ���� ��ǥ�ҿ����� ���� �����մϴ�. (��ȭ���� �� ���ι߱Ǳ� ���� �Ұ�)

���� �� Ȩ������ ���Ź��: ���� > ��ȭ�� > �ð� > �ο� > ������ �� �������� > ���� ����� ���� > ����� ���������� ���� ���� PIN��ȣ 16�ڸ� �Է� > ����

���� �Ǵ� PIN ��ȣ�� �����˴ϴ�.

�ް��ڽ� Ȩ������ ����� ���ų������� PIN ��ȣ Ȯ���� �����մϴ�.

�Ϻ� ���� [��Ʈ����, �ϻ꺧���Ÿ��, ��õ����, ��Ʈ������], Ư���� [�� ��Ƽũ, MX, �� �۽�Ʈ Ŭ�� ��], Ư����(�ξ⼮, Ŀ�ü�, ���ڴ� ��) �� Ư������Ʈ ���Ű� �Ұ��մϴ�. (���� ���� ���� ������� ���� �Ұ�)

�� ������ ��ȭ ���� �� �ް��ڽ� ������ ���� ������ ����Ʈ�� �����˴ϴ�.

','https://img.megabox.co.kr/SharedImg/store/2020/07/09/o9qHmEvE7s13Ha2Q9hUhGgZFyZej5JjN_280.jpg',10000);

--4--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','�� ��Ƽũ ����Ʈ ��������� 1��','�� ��Ƽũ ����Ʈ ���������','����밡�ɱ���
�� �����������: ��õ����, ��Ʈ����

*��ȿ�Ⱓ*

�����Ϸκ��� 2�� �̳� ��� ����

���� ���� ��ȿ�Ⱓ�� �����Ϸκ��� 2���̸�, ���������� ������ ��� ���Ͽ��� ��ȯ �����մϴ�.

++�Ǹż���++

1ȸ 8�� ���Ű���
!!���� �� ���!!
�����Ϸκ��� 10�ϱ��� ��� �����ϸ�, �κ���Ҵ� �Ұ��մϴ�. (��Ű��ǰ�� ������� �Ұ�)','�� ����/���/ȯ�� �ȳ�
�� ��ǰ�� �����Ϸκ��� 10�� �̳��� ��� �����մϴ�.
- ��ȿ�Ⱓ�� �� ��ǰ�� ��ȿ�Ⱓ ������ ���� ��û�� �����ϸ�, 1ȸ ���� �� 3����(92��) ������ ����˴ϴ�.
- �����Ϸκ��� 5����� ��ȿ�Ⱓ ������ �����մϴ�.
- ���� ��ȿ�Ⱓ ���� �Ŀ��� �����ݾ��� 90%�� ���� ȯ�� ��û �����ϸ�, ȯ�� ó���� 7�� �̻��� �ð��� �ҿ�� �� �ֽ��ϴ�. (����ó: 1544-0070)
- ���� ��� �� ȯ�� ��û�� �̻�� ��ǰ�� ���� �����ϸ�, ����� ��ǰ�� ���ؼ��� �Ұ��մϴ�.
- �� ��ǰ�� �������� ȯ���� �Ұ��մϴ�.
 �� 2020�� 2�� 4�� ���� ���� ��ǰ�� ���Ͽ� ��ȿ�Ⱓ ���� ��û�� �����մϴ�.','��ǰ�̿�ȳ� 
�� ��ǰ�� �� ��Ƽũ ����Ʈ ���� ���������� �Ϲݰ�, Ư����[MX, �� ��Ƽũ, ���ڴ�, �� �۽�Ʈ Ŭ��, Ű���] �� Ư������Ʈ ���Ű� �Ұ��մϴ�. (���� ���� ���� ��� ���� ���� �Ұ�)

�� ���� ���� �� �������� �ڵ� ��ϵǸ�, ��ϵ� ���������� ��� �����մϴ�.
(��! ���� ���� PIN��ȣ�� ���� �� ����� ��ȯ�� ��� �� ��� �����մϴ�.)

�� ���� ���� ������ ��ȿ�Ⱓ�� �����Ϸκ��� 2���Դϴ�.

���� ��å�� ���� Ƽ�ϱݾ��� ���� �� �� ������ �̿� ���� ���� ȯ���� �Ұ��մϴ�. (����/�ɾ�/û�ҳ�/���/��Ƽ��/��� ��)

�� ���� īī�� �˸����� ���� ���� �˴ϴ�. (īī���� �̼�ġ �Ǵ� �̼��� ���� MMS�� �߼�)

�� ���� �ް��ڽ� Ȩ������, ����, �����ǥ�ҿ��� ���� �����մϴ�. (��ȭ���� �� ���ι߱Ǳ� ���� �Ұ�)

���� �� Ȩ������ ���Ź��: ���� > ��ȭ�� > �ð� > �ο� > ������ �� �������� > ���� ����� ���� > ����� ���������� ���۹��� PIN��ȣ 16�ڸ� �Է�> ����

���� �Ǵ� PIN ��ȣ�� �����˴ϴ�.

�ް��ڽ� Ȩ������ ����� ���ų������� PIN ��ȣ Ȯ�� �����մϴ�.

�� ������ ��ȭ ���� �� �ް��ڽ� ������ ���� ������ ����Ʈ�� �����˴ϴ�.

��밡������: �ڿ�����, �д���, ������, �ϳ���Ÿ�ʵ���','https://img.megabox.co.kr/SharedImg/store/2020/07/09/FnKsGhjngJcy1sbOVPpnwiKSh61UdhGr_280.jpg',35000);

--5--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','�����޺���Ű��','2D �Ϲݰ����� 2�� + �����޺� ����(L)1 + ź������(R)2','����밡�ɱ���
 �����������: ��õ����, ��Ʈ����, �ϻ꺧���Ÿ��, ��Ʈ������

+��ȿ�Ⱓ+

�����Ϸκ��� 2�� �̳� ��� ����

���� ���� ��ȿ�Ⱓ�� �����Ϸκ��� 2���̸�, ���������� ������ ��� ���Ͽ��� ��ȯ �����մϴ�.


++�Ǹż���++

1ȸ 8�� ���Ű���
!!���� �� ���!!

�����Ϸκ��� 10�� �̳� ��� �����ϸ�, �κ���Ҵ� �Ұ����մϴ�.

�����Ϸκ��� 10�ϱ��� ��� �����ϸ�, �κ���Ҵ� �Ұ��մϴ�. (��Ű��ǰ�� ������� �Ұ�)','�� ����/���/ȯ�� �ȳ�
- �� ��ǰ�� �����Ϸκ��� 10�� �̳��� ��� �����մϴ�.
- ��ȿ�Ⱓ�� �� ��ǰ�� ��ȿ�Ⱓ ������ ���� ��û�� �����ϸ�, 1ȸ ���� �� 3����(92��) ������ ����˴ϴ�.
- �����Ϸκ��� 5����� ��ȿ�Ⱓ ������ �����մϴ�.
- ���� ��ȿ�Ⱓ ���� �Ŀ��� �����ݾ��� 90%�� ���� ȯ�� ��û �����ϸ�, ȯ�� ó���� 7�� �̻��� �ð��� �ҿ�� �� �ֽ��ϴ�. (����ó: 1544-0070)
- ���� ��� �� ȯ�� ��û�� �̻�� ��ǰ�� ���� �����ϸ�, ����� ��ǰ�� ���ؼ��� �Ұ��մϴ�.
- ������ �������� �ϰ� ȯ�Ҹ� �����ϸ�, �κ� ȯ�� �Ұ��մϴ�.
  (�� : 2�� �̻� �ѹ��� ���� �� ��� �������� �ϰ� ����ؾ� �ϸ�, ������ ��Ҵ� �Ұ��մϴ�.)
- �� ��ǰ�� �������� ȯ���� �Ұ��մϴ�.

 �� 2020�� 2�� 4�� ���� ���� ��ǰ�� ���Ͽ� ��ȿ�Ⱓ ���� ��û�� �����մϴ�.','�� ���� ���� �� �������� �ڵ� ��ϵǸ�, ��ϵ� ���������� ��� �����մϴ�.
(��! ���� ���� PIN��ȣ�� ���� �� ����� ��ȯ�� ��� �� ��� �����մϴ�.)

�� ��ǰ �������� ���� ������ ��ȿ�Ⱓ�� �����Ϸκ��� 2���Դϴ�.

�� ��ǰ�� �Ϻ� �������� ����� �Ұ��Ͽ���, ���Ұ����� Ȯ�� �� ���Ű��� �Ͻñ� �ٶ��ϴ�.

�� ���� īī�� �˸����� ���� ���� �˴ϴ�. (īī���� �̼�ġ �Ǵ� �̼��� ���� MMS�� �߼�)

�� ���� �ް��ڽ� Ȩ������, ����, ���� ��ǥ�ҿ��� ���� �����մϴ�.(��ȭ���� �� ���ι߱Ǳ� ���� �Ұ�)

���� �� Ȩ������ ���Ź��: ���� > ��ȭ�� > �ð� > �ο� > ������ �� �������� > ���� ����� ���� > ����� ���������� ���۹��� PIN��ȣ 16�ڸ� �Է�> ����

���� �Ǵ� PIN ��ȣ�� �����˴ϴ�.

�ް��ڽ� Ȩ������ ����� ���ų������� PIN ��ȣ Ȯ�� �����մϴ�.

���� ��å�� ���� Ƽ�ϱݾ��� ���� �� �� ������ �̿� ���� ���� ȯ���� �Ұ��մϴ�.(����/�ɾ�/û�ҳ�/���/��Ƽ��/��� ��)

������ȯ���� ��ȭ�� ���忡�� ������ ��� �� �Բ� ��µǸ� ������ ���Ͽ��� ����� �����մϴ�.

���ܰ� ������ ������, �� ���� �� �߰��ݾ��� �߻��� �� ������, ��µ� ���������� �н��ϼ��� ��� ������� �Ұ����Ͽ��� �������ֽñ� �ٶ��ϴ�.

�� ������ ��ȭ ���� �� �ް��ڽ� ������ ���� ������ ����Ʈ�� �����˴ϴ�.

����������� : ��õ����, ��Ʈ����, �ϻ꺧���Ÿ��, ��Ʈ������','https://img.megabox.co.kr/SharedImg/store/2020/07/09/QqF8RMPD8dL6918HjnnMrwyZrjaV9xlA_280.jpg',28000);

--6--
 insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','3D ���� ������','3D ���� ������','����밡�ɱ���
�� �����������: ��õ����, ��Ʈ����


*��ȿ�Ⱓ*

�����Ϸκ��� 2�� �̳� ��� ����

���� ���� ��ȿ�Ⱓ�� �����Ϸκ��� 2���̸�, ���������� ������ ��� ���Ͽ��� ��ȯ �����մϴ�.


++�Ǹż���++

1ȸ 8�� ���Ű���

!!���� �� ���!!

�����Ϸκ��� 10�� �̳� ��� �����ϸ�, �κ���Ҵ� �Ұ����մϴ�.

�����Ϸκ��� 10�ϱ��� ��� �����ϸ�, �κ���Ҵ� �Ұ��մϴ�. (��Ű��ǰ�� ������� �Ұ�)','�� ����/���/ȯ�� �ȳ�
�� ��ǰ�� �����Ϸκ��� 10�� �̳��� ��� �����մϴ�.
- ��ȿ�Ⱓ�� �� ��ǰ�� ��ȿ�Ⱓ ������ ���� ��û�� �����ϸ�, 1ȸ ���� �� 3����(92��) ������ ����˴ϴ�.
- �����Ϸκ��� 5����� ��ȿ�Ⱓ ������ �����մϴ�.
- ���� ��ȿ�Ⱓ ���� �Ŀ��� �����ݾ��� 90%�� ���� ȯ�� ��û �����ϸ�, ȯ�� ó���� 7�� �̻��� �ð��� �ҿ�� �� �ֽ��ϴ�. (����ó: 1544-0070)
- ���� ��� �� ȯ�� ��û�� �̻�� ��ǰ�� ���� �����ϸ�, ����� ��ǰ�� ���ؼ��� �Ұ��մϴ�.
- �� ��ǰ�� �������� ȯ���� �Ұ��մϴ�.
 �� 2020�� 2�� 4�� ���� ���� ��ǰ�� ���Ͽ� ��ȿ�Ⱓ ���� ��û�� �����մϴ�.','�� �� ���� 3D �Ϲݰ� ���� �������̸� �ݾױ��� �ƴմϴ�. (����/�ɾ�/û�ҳ�/���/��� ���� �� ����ȯ�� �Ұ�)

�� ���� ���� �� �������� �ڵ� ��ϵǸ�, ��ϵ� ���������� ��� �����մϴ�.
(��! ���� ���� PIN��ȣ�� ���� �� ����� ��ȯ�� ��� �� ��� �����մϴ�.)

�� ���� ���Ű��� ��ȿ�Ⱓ�� �����Ϸκ��� 2���Դϴ�.

�� ���� īī�� �˸����� ���� ���� �˴ϴ�. (īī���� �̼�ġ �Ǵ� �̼��� ���� MMS�� �߼�)

�� ���� �ް��ڽ� Ȩ������, ����, ���� ��ǥ�ҿ����� ���� �����մϴ�. (��ȭ���� �� ���ι߱Ǳ� ���� �Ұ�)

���� �� Ȩ������ ���Ź�� : ���� > ��ȭ�� > �ð� > �ο� > ������ �� �������� > ���� ����� ���� > ����� ���������� ���� ���� PIN��ȣ 16�ڸ� �Է� > ����

�ټ� ������ ���� �� PIN��ȣ ���� �Է��� �ʿ��մϴ�

�ް��ڽ� Ȩ������ ����� ���ų������� ���ų��� �� ��ȣ Ȯ���� �����ϸ� MMS �������� �� �� ���� �� ����� ��ȣ�θ� �������� �����մϴ�

�Ϻ� ����� �� Ư���� (�� ��Ƽũ, ���ڴ�, �� �۽�Ʈ Ŭ��, ����Ʈ, MX, Ű��ڽ�)�� Ư������Ʈ ���� �ÿ��� ����Ͻ� �� �����ϴ�.
(���� ���� ���ο� ������� ���Ұ� �մϴ�.)

�� ���������� ��ȭ ���� ���� �ް��ڽ� ����� ��å�� ���� ���� ����Ʈ�� �����˴ϴ�.','https://img.megabox.co.kr/SharedImg/store/2020/07/13/GgzuIt0bnffZwqjTO1WpDS7FlPJpOxhu_280.jpg',13000);

--7--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','�����޺�','����(R) 2 + ź������(R) 2','����밡�ɱ���
���� ���� ��� ����!!


*��ȿ�Ⱓ*

�����Ϸκ��� 92�� �̳� ��� ����


++�Ǹż���++

1ȸ 8�� ���Ű���

!!���� �� ���!!

�����Ϸκ��� 10�ϱ��� ��� �����ϸ�, �κ���Ҵ� �Ұ��մϴ�. (��Ű��ǰ�� ������� �Ұ�)','�� ����/���/ȯ�� �ȳ�
�� ��ǰ�� �����Ϸκ��� 10�� �̳��� ��� �����մϴ�.
- ��ȿ�Ⱓ�� �� ��ǰ�� ��ȿ�Ⱓ ������ ���� ��û�� �����ϸ�, 1ȸ ���� �� 3����(92��) ������ ����˴ϴ�.
- �����Ϸκ��� 5����� ��ȿ�Ⱓ ������ �����մϴ�.
- ���� ��ȿ�Ⱓ ���� �Ŀ��� �����ݾ��� 90%�� ���� ȯ�� ��û �����ϸ�, ȯ�� ó���� 7�� �̻��� �ð��� �ҿ�� �� �ֽ��ϴ�. (����ó: 1544-0070)
- ���� ��� �� ȯ�� ��û�� �̻�� ��ǰ�� ���� �����ϸ�, ����� ��ǰ�� ���ؼ��� �Ұ��մϴ�.
- �� ��ǰ�� �������� ȯ���� �Ұ��մϴ�.
 �� 2020�� 2�� 4�� ���� ���� ��ǰ�� ���Ͽ� ��ȿ�Ⱓ ���� ��û�� �����մϴ�.','�� ��밡�� ����
�������� ��� ����

�� �̿� �ȳ�
�� ��ǰ�� ��� ������ �����Ϸκ��� 92�ϱ����Դϴ�.
- ��ȭ�� �������� ����� ������ȣ ���� �� ��ǰ���� ��ȯ�Ͻ� �� �ֽ��ϴ�.
- �� ��ǰ�� �¶��� ���� �Ǹ� ��ǰ���� ���� ���Ŵ� �Ұ��մϴ�.
- ������ ��ǰ�� ������ �ް��ڽ� > ����� ���ų��������� Ȯ���� �� �ֽ��ϴ�.
- ���� �� ������ ��, ũ��, ���� ���� �� �߰� �ݾ��� �߻��� �� �ֽ��ϴ�.
- ��� �̹����� ���� ��ǰ�� �ٸ� �� �ֽ��ϴ�.','https://img.megabox.co.kr/SharedImg/store/2020/03/17/Fzy9gx2Nzf8ZVgUUrjJve5or0mOBj5Tr_280.png',12000);

--8--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','�̱���Ű��','2D �Ϲݰ����� 1�� + ����(R)1 + ź������(R)1','����밡�ɱ���
�� �Ϻ� Ư���� (�� ��Ƽũ, ���ڴ�, MX, M, �� �۽�Ʈ Ŭ��)�� �������Ұ� ������� ���Ұ��մϴ�.


*��ȿ�Ⱓ*

�����Ϸκ��� 2�� �̳� ��� ����

���� ���� ��ȿ�Ⱓ�� �����Ϸκ��� 2���̳� ����


++�Ǹż���++

1ȸ 8�� ���Ű���

!!���� �� ���!!

�����Ϸκ��� 10�� �̳� ��� �����ϸ�, �κ���Ҵ� �Ұ����մϴ�.

�����Ϸκ��� 10�ϱ��� ��� �����ϸ�, �κ���Ҵ� �Ұ��մϴ�. (��Ű��ǰ�� ������� �Ұ�)','�� ����/���/ȯ�� �ȳ�
�� ��ǰ�� �����Ϸκ��� 10�� �̳��� ��� �����մϴ�.
- ��ȿ�Ⱓ�� �� ��ǰ�� ��ȿ�Ⱓ ������ ���� ��û�� �����ϸ�, 1ȸ ���� �� 3����(92��) ������ ����˴ϴ�.
- �����Ϸκ��� 5����� ��ȿ�Ⱓ ������ �����մϴ�.
- ���� ��ȿ�Ⱓ ���� �Ŀ��� �����ݾ��� 90%�� ���� ȯ�� ��û �����ϸ�, ȯ�� ó���� 7�� �̻��� �ð��� �ҿ�� �� �ֽ��ϴ�. (����ó: 1544-0070)
- ���� ��� �� ȯ�� ��û�� �̻�� ��ǰ�� ���� �����ϸ�, ����� ��ǰ�� ���ؼ��� �Ұ��մϴ�.
- �� ��ǰ�� �������� ȯ���� �Ұ��մϴ�.
 �� 2020�� 2�� 4�� ���� ���� ��ǰ�� ���Ͽ� ��ȿ�Ⱓ ���� ��û�� �����մϴ�.','�ẻ ���� ���� �� �������� �ڵ� ��ϵǸ�, ��ϵ� ���������� ��� �����մϴ�.
(��! ���� ���� PIN��ȣ�� ���� �� ����� ��ȯ�� ��� �� ��� �����մϴ�.)

�� ��ǰ �������� ���� ������ ��ȿ�Ⱓ�� �����Ϸκ��� 2���Դϴ�.

�� ��ǰ�� �Ϻ� �������� ����� �Ұ��Ͽ���, ���Ұ����� Ȯ�� �� ���Ű��� �Ͻñ� �ٶ��ϴ�.

�� ���� īī�� �˸����� ���� ���� �˴ϴ�. (īī���� �̼�ġ �Ǵ� �̼��� ���� MMS�� �߼�)

�� ���� �ް��ڽ� Ȩ������, ����, ���� ��ǥ�ҿ��� ���� �����մϴ�.(��ȭ���� �� ���ι߱Ǳ� ���� �Ұ�)

���� �� Ȩ������ ���Ź��: ���� > ��ȭ�� > �ð� > �ο� > ������ �� �������� > ���� ����� ���� > ����� ���������� ���۹��� PIN��ȣ 16�ڸ� �Է� �� ����

���� �Ǵ� PIN ��ȣ�� �����˴ϴ�.

�ް��ڽ� Ȩ������ ����� ���ų������� PIN ��ȣ Ȯ���� �����մϴ�.

���� ��å�� ���� Ƽ�ϱݾ��� ���� �� �� ������ �̿� ���� ���� ȯ���� �Ұ��մϴ�.(����/�ɾ�/û�ҳ�/���/��Ƽ��/��� ��)

������ȯ���� ��ȭ�� ���忡�� ������ ��� �� �Բ� ��µǸ� ������ ���Ͽ��� ����� �����մϴ�. 

���ܰ� ������ ������, �� ���� �� �߰��ݾ��� �߻��� �� ������, ��µ� ���������� �н��ϼ��� ��� ������� �Ұ����Ͽ��� �������ֽñ� �ٶ��ϴ�.

�� ������ ��ȭ ���� �� �ް��ڽ� ������ ���� ������ ����Ʈ�� �����˴ϴ�.

����������� :��õ����,��Ʈ����,�ϻ꺧���Ÿ��, ��Ʈ������','https://img.megabox.co.kr/SharedImg/store/2020/07/09/OOLquNfrgYG3ZKRgBh2uOR99LzjiTVPX_280.jpg',16000);
--9--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','�ް��йи���Ű��','2D �Ϲݰ����� 4�� + ����(R)2 + ����(R)2 + ����1 + �ѿ�¡�� 1','����밡�ɱ���
�� �����������: �ڿ�����, ������, ������, ��õ��, ��������, ������, ��ź��, �λ������, �ϴ뱸(ĥ��)��, ��õ����, ����(��ġ��)��, ��Ʈ����, ������, ��õ��, �Ȼ��߾���, ������ũ��븮��, ������, ��õ������, �ϻ꺧���Ÿ��, ������, ��õ��, ��õ��, ÷����, ������, ���ֱ�����, ������


*��ȿ�Ⱓ*

�����Ϸκ��� 2�� �̳� ��� ����

�����Ϸκ��� 10�� �̳� ��� �����ϸ�, �κ���Ҵ� �Ұ����մϴ�.


++�Ǹż���++

1ȸ 8�� ���Ű���

!!���� �� ���!!

�����Ϸκ��� 10�ϱ��� ��� �����ϸ�, �κ���Ҵ� �Ұ��մϴ�.
(��Ű��ǰ�� ������� �Ұ�)','�� ����/���/ȯ�� �ȳ�
�� ��ǰ�� �����Ϸκ��� 10�� �̳��� ��� �����մϴ�.
- ��ȿ�Ⱓ�� �� ��ǰ�� ��ȿ�Ⱓ ������ ���� ��û�� �����ϸ�, 1ȸ ���� �� 3����(92��) ������ ����˴ϴ�.
- �����Ϸκ��� 5����� ��ȿ�Ⱓ ������ �����մϴ�.
- ���� ��ȿ�Ⱓ ���� �Ŀ��� �����ݾ��� 90%�� ���� ȯ�� ��û �����ϸ�, ȯ�� ó���� 7�� �̻��� �ð��� �ҿ�� �� �ֽ��ϴ�. (����ó: 1544-0070)
- ���� ��� �� ȯ�� ��û�� �̻�� ��ǰ�� ���� �����ϸ�, ����� ��ǰ�� ���ؼ��� �Ұ��մϴ�.
- �� ��ǰ�� �������� ȯ���� �Ұ��մϴ�.
 �� 2020�� 2�� 4�� ���� ���� ��ǰ�� ���Ͽ� ��ȿ�Ⱓ ���� ��û�� �����մϴ�.','�ẻ ���� ���� �� �������� �ڵ� ��ϵǸ�, ��ϵ� ���������� ��� �����մϴ�.
(��! ���� ���� PIN��ȣ�� ���� �� ����� ��ȯ�� ��� �� ��� �����մϴ�.)

�� ��ǰ �������� ���� ������ ��ȿ�Ⱓ�� �����Ϸκ��� 2���Դϴ�.

�� ��ǰ�� �Ϻ� �������� ����� �Ұ��Ͽ���, ���Ұ����� Ȯ�� �� ���Ű��� �Ͻñ� �ٶ��ϴ�.

�� ���� īī�� �˸����� ���� ���� �˴ϴ�. (īī���� �̼�ġ �Ǵ� �̼��� ���� MMS�� �߼�)

�� ���� �ް��ڽ� Ȩ������, ����, ���� ��ǥ�ҿ��� ���� �����մϴ�.(��ȭ���� �� ���ι߱Ǳ� ���� �Ұ�)

���� �� Ȩ������ ���Ź��: ���� > ��ȭ�� > �ð� > �ο� > ������ �� �������� > ���� ����� ���� > ����� ���������� ���۹��� PIN��ȣ 16�ڸ� �Է� �� ����

���� �Ǵ� PIN ��ȣ�� �����˴ϴ�.

�ް��ڽ� Ȩ������ ����� ���ų������� PIN ��ȣ Ȯ���� �����մϴ�.

���� ��å�� ���� Ƽ�ϱݾ��� ���� �� �� ������ �̿� ���� ���� ȯ���� �Ұ��մϴ�.(����/�ɾ�/û�ҳ�/���/��Ƽ��/��� ��)

������ȯ���� ��ȭ�� ���忡�� ������ ��� �� �Բ� ��µǸ� ������ ���Ͽ��� ����� �����մϴ�. 

���ܰ� ������ ������, �� ���� �� �߰��ݾ��� �߻��� �� ������, ��µ� ���������� �н��ϼ��� ��� ������� �Ұ����Ͽ��� �������ֽñ� �ٶ��ϴ�.

�� ������ ��ȭ ���� �� �ް��ڽ� ������ ���� ������ ����Ʈ�� �����˴ϴ�.

����������� :��õ����,��Ʈ����,�ϻ꺧���Ÿ��, ��Ʈ������','https://img.megabox.co.kr/SharedImg/store/2020/07/09/OkfvQJurbAiapvpqIKd7h0sTcOP2RaHl_280.jpg',50000);
	insert into qnareply(qrno,qno,reply,replyId,replyPw)
		values(qrno_seq.nextval,1,123,123,123);
        commit;
-----------------------------------------------------------------------------
insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',1,'kkk123',1,80,TO_DATE('2020/08/19 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',2,'kkk123',1,80,TO_DATE('2020/08/19 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',3,'kkk123',1,80,TO_DATE('2020/08/19 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',4,'kkk123',1,80,TO_DATE('2020/08/19 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',5,'kkk123',1,80,TO_DATE('2020/08/19 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',6,'kkk123',2,80,TO_DATE('2020/08/19 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',7,'kkk123',2,80,TO_DATE('2020/08/19 14:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 16:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',8,'kkk123',2,80,TO_DATE('2020/08/19 18:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 20:23:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',1,'kkk123',2,80,TO_DATE('2020/08/19 21:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 23:47:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',2,'kkk123',3,80,TO_DATE('2020/08/19 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',3,'kkk123',3,80,TO_DATE('2020/08/19 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',4,'kkk123',3,80,TO_DATE('2020/08/19 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',5,'kkk123',3,80,TO_DATE('2020/08/19 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',6,'kkk123',3,80,TO_DATE('2020/08/19 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',7,'kkk123',3,80,TO_DATE('2020/08/19 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',8,'kkk123',1,80,TO_DATE('2020/08/19 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',1,'kkk123',1,80,TO_DATE('2020/08/19 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',2,'kkk123',1,80,TO_DATE('2020/08/19 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',3,'kkk123',1,80,TO_DATE('2020/08/19 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',4,'kkk123',1,80,TO_DATE('2020/08/19 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',5,'kkk123',2,80,TO_DATE('2020/08/19 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',6,'kkk123',2,80,TO_DATE('2020/08/19 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 17:37:00','yyyy/mm/dd hh24:mi:ss'));


insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',7,'kkk123',2,80,TO_DATE('2020/08/19 19:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 21:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',8,'kkk123',2,80,TO_DATE('2020/08/19 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 00:37:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',1,'kkk123',3,80,TO_DATE('2020/08/19 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',2,'kkk123',3,80,TO_DATE('2020/08/19 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',3,'kkk123',3,80,TO_DATE('2020/08/19 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',4,'kkk123',3,80,TO_DATE('2020/08/19 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',5,'kkk123',3,80,TO_DATE('2020/08/19 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',6,'kkk123',3,80,TO_DATE('2020/08/19 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',7,'kkk123',1,80,TO_DATE('2020/08/19 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 11:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',8,'kkk123',1,80,TO_DATE('2020/08/19 12:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 15:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',1,'kkk123',1,80,TO_DATE('2020/08/19 15:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 17:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',2,'kkk123',1,80,TO_DATE('2020/08/19 18:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 20:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',3,'kkk123',1,80,TO_DATE('2020/08/19 20:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 23:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',4,'kkk123',1,80,TO_DATE('2020/08/19 23:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 01:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',5,'kkk123',2,80,TO_DATE('2020/08/19 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 11:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',6,'kkk123',2,80,TO_DATE('2020/08/19 12:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 14:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',7,'kkk123',2,80,TO_DATE('2020/08/19 14:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 17:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',8,'kkk123',2,80,TO_DATE('2020/08/19 17:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 19:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',1,'kkk123',2,80,TO_DATE('2020/08/19 20:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 22:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',2,'kkk123',2,80,TO_DATE('2020/08/19 22:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 01:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',3,'kkk123',3,80,TO_DATE('2020/08/19 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',4,'kkk123',3,80,TO_DATE('2020/08/19 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',5,'kkk123',3,80,TO_DATE('2020/08/19 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',6,'kkk123',3,80,TO_DATE('2020/08/19 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',7,'kkk123',3,80,TO_DATE('2020/08/19 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/19 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',8,'kkk123',3,80,TO_DATE('2020/08/19 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 00:42:00','yyyy/mm/dd hh24:mi:ss'));
commit;





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',1,'kkk123',1,80,TO_DATE('2020/08/20 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',2,'kkk123',1,80,TO_DATE('2020/08/20 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',3,'kkk123',1,80,TO_DATE('2020/08/20 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',4,'kkk123',1,80,TO_DATE('2020/08/20 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',5,'kkk123',1,80,TO_DATE('2020/08/20 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',6,'kkk123',2,80,TO_DATE('2020/08/20 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',7,'kkk123',2,80,TO_DATE('2020/08/20 14:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 16:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',8,'kkk123',2,80,TO_DATE('2020/08/20 18:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 20:23:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',1,'kkk123',2,80,TO_DATE('2020/08/20 21:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 23:47:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',2,'kkk123',3,80,TO_DATE('2020/08/20 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',3,'kkk123',3,80,TO_DATE('2020/08/20 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',4,'kkk123',3,80,TO_DATE('2020/08/20 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',5,'kkk123',3,80,TO_DATE('2020/08/20 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',6,'kkk123',3,80,TO_DATE('2020/08/20 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',7,'kkk123',3,80,TO_DATE('2020/08/20 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',8,'kkk123',1,80,TO_DATE('2020/08/20 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',1,'kkk123',1,80,TO_DATE('2020/08/20 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',2,'kkk123',1,80,TO_DATE('2020/08/20 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',3,'kkk123',1,80,TO_DATE('2020/08/20 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',4,'kkk123',1,80,TO_DATE('2020/08/20 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',5,'kkk123',2,80,TO_DATE('2020/08/20 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',6,'kkk123',2,80,TO_DATE('2020/08/20 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 17:37:00','yyyy/mm/dd hh24:mi:ss'));


insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',7,'kkk123',2,80,TO_DATE('2020/08/20 19:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 21:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',8,'kkk123',2,80,TO_DATE('2020/08/20 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 00:37:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',1,'kkk123',3,80,TO_DATE('2020/08/20 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',2,'kkk123',3,80,TO_DATE('2020/08/20 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',3,'kkk123',3,80,TO_DATE('2020/08/20 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',4,'kkk123',3,80,TO_DATE('2020/08/20 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',5,'kkk123',3,80,TO_DATE('2020/08/20 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',6,'kkk123',3,80,TO_DATE('2020/08/20 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',7,'kkk123',1,80,TO_DATE('2020/08/20 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 11:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',8,'kkk123',1,80,TO_DATE('2020/08/20 12:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 15:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',1,'kkk123',1,80,TO_DATE('2020/08/20 15:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 17:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',2,'kkk123',1,80,TO_DATE('2020/08/20 18:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 20:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',3,'kkk123',1,80,TO_DATE('2020/08/20 20:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 23:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',4,'kkk123',1,80,TO_DATE('2020/08/20 23:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 01:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',5,'kkk123',2,80,TO_DATE('2020/08/20 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 11:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',6,'kkk123',2,80,TO_DATE('2020/08/20 12:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 14:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',7,'kkk123',2,80,TO_DATE('2020/08/20 14:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 17:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',8,'kkk123',2,80,TO_DATE('2020/08/20 17:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 19:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',1,'kkk123',2,80,TO_DATE('2020/08/20 20:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 22:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',2,'kkk123',2,80,TO_DATE('2020/08/20 22:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 01:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',3,'kkk123',3,80,TO_DATE('2020/08/20 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',4,'kkk123',3,80,TO_DATE('2020/08/20 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',5,'kkk123',3,80,TO_DATE('2020/08/20 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',6,'kkk123',3,80,TO_DATE('2020/08/20 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',7,'kkk123',3,80,TO_DATE('2020/08/20 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/20 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',8,'kkk123',3,80,TO_DATE('2020/08/20 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 00:42:00','yyyy/mm/dd hh24:mi:ss'));
commit;





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',1,'kkk123',1,80,TO_DATE('2020/08/21 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',2,'kkk123',1,80,TO_DATE('2020/08/21 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',3,'kkk123',1,80,TO_DATE('2020/08/21 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',4,'kkk123',1,80,TO_DATE('2020/08/21 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',5,'kkk123',1,80,TO_DATE('2020/08/21 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',6,'kkk123',2,80,TO_DATE('2020/08/21 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',7,'kkk123',2,80,TO_DATE('2020/08/21 14:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 16:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',8,'kkk123',2,80,TO_DATE('2020/08/21 18:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 20:23:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',1,'kkk123',2,80,TO_DATE('2020/08/21 21:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 23:47:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',2,'kkk123',3,80,TO_DATE('2020/08/21 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',3,'kkk123',3,80,TO_DATE('2020/08/21 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',4,'kkk123',3,80,TO_DATE('2020/08/21 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',5,'kkk123',3,80,TO_DATE('2020/08/21 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',6,'kkk123',3,80,TO_DATE('2020/08/21 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',7,'kkk123',3,80,TO_DATE('2020/08/21 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',8,'kkk123',1,80,TO_DATE('2020/08/21 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',1,'kkk123',1,80,TO_DATE('2020/08/21 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',2,'kkk123',1,80,TO_DATE('2020/08/21 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',3,'kkk123',1,80,TO_DATE('2020/08/21 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',4,'kkk123',1,80,TO_DATE('2020/08/21 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',5,'kkk123',2,80,TO_DATE('2020/08/21 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',6,'kkk123',2,80,TO_DATE('2020/08/21 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 17:37:00','yyyy/mm/dd hh24:mi:ss'));


insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',7,'kkk123',2,80,TO_DATE('2020/08/21 19:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 21:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',8,'kkk123',2,80,TO_DATE('2020/08/21 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 00:37:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',1,'kkk123',3,80,TO_DATE('2020/08/21 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',2,'kkk123',3,80,TO_DATE('2020/08/21 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',3,'kkk123',3,80,TO_DATE('2020/08/21 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',4,'kkk123',3,80,TO_DATE('2020/08/21 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',5,'kkk123',3,80,TO_DATE('2020/08/21 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',6,'kkk123',3,80,TO_DATE('2020/08/21 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',7,'kkk123',1,80,TO_DATE('2020/08/21 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 11:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',8,'kkk123',1,80,TO_DATE('2020/08/21 12:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 15:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',1,'kkk123',1,80,TO_DATE('2020/08/21 15:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 17:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',2,'kkk123',1,80,TO_DATE('2020/08/21 18:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 20:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',3,'kkk123',1,80,TO_DATE('2020/08/21 20:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 23:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',4,'kkk123',1,80,TO_DATE('2020/08/21 23:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 01:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',5,'kkk123',2,80,TO_DATE('2020/08/21 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 11:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',6,'kkk123',2,80,TO_DATE('2020/08/21 12:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 14:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',7,'kkk123',2,80,TO_DATE('2020/08/21 14:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 17:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',8,'kkk123',2,80,TO_DATE('2020/08/21 17:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 19:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',1,'kkk123',2,80,TO_DATE('2020/08/21 20:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 22:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',2,'kkk123',2,80,TO_DATE('2020/08/21 22:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 01:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',3,'kkk123',3,80,TO_DATE('2020/08/21 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',4,'kkk123',3,80,TO_DATE('2020/08/21 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',5,'kkk123',3,80,TO_DATE('2020/08/21 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',6,'kkk123',3,80,TO_DATE('2020/08/21 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',7,'kkk123',3,80,TO_DATE('2020/08/21 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/21 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',8,'kkk123',3,80,TO_DATE('2020/08/21 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 00:42:00','yyyy/mm/dd hh24:mi:ss'));
commit;











insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',1,'kkk123',1,80,TO_DATE('2020/08/22 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',2,'kkk123',1,80,TO_DATE('2020/08/22 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',3,'kkk123',1,80,TO_DATE('2020/08/22 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',4,'kkk123',1,80,TO_DATE('2020/08/22 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',5,'kkk123',1,80,TO_DATE('2020/08/22 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',6,'kkk123',2,80,TO_DATE('2020/08/22 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',7,'kkk123',2,80,TO_DATE('2020/08/22 14:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 16:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',8,'kkk123',2,80,TO_DATE('2020/08/22 18:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 20:23:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',1,'kkk123',2,80,TO_DATE('2020/08/22 21:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 23:47:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',2,'kkk123',3,80,TO_DATE('2020/08/22 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',3,'kkk123',3,80,TO_DATE('2020/08/22 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',4,'kkk123',3,80,TO_DATE('2020/08/22 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',5,'kkk123',3,80,TO_DATE('2020/08/22 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',6,'kkk123',3,80,TO_DATE('2020/08/22 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',7,'kkk123',3,80,TO_DATE('2020/08/22 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',8,'kkk123',1,80,TO_DATE('2020/08/22 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',1,'kkk123',1,80,TO_DATE('2020/08/22 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',2,'kkk123',1,80,TO_DATE('2020/08/22 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',3,'kkk123',1,80,TO_DATE('2020/08/22 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',4,'kkk123',1,80,TO_DATE('2020/08/22 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',5,'kkk123',2,80,TO_DATE('2020/08/22 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',6,'kkk123',2,80,TO_DATE('2020/08/22 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 17:37:00','yyyy/mm/dd hh24:mi:ss'));


insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',7,'kkk123',2,80,TO_DATE('2020/08/22 19:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 21:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',8,'kkk123',2,80,TO_DATE('2020/08/22 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 00:37:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',1,'kkk123',3,80,TO_DATE('2020/08/22 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',2,'kkk123',3,80,TO_DATE('2020/08/22 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',3,'kkk123',3,80,TO_DATE('2020/08/22 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',4,'kkk123',3,80,TO_DATE('2020/08/22 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',5,'kkk123',3,80,TO_DATE('2020/08/22 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',6,'kkk123',3,80,TO_DATE('2020/08/22 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',7,'kkk123',1,80,TO_DATE('2020/08/22 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 11:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',8,'kkk123',1,80,TO_DATE('2020/08/22 12:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 15:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',1,'kkk123',1,80,TO_DATE('2020/08/22 15:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 17:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',2,'kkk123',1,80,TO_DATE('2020/08/22 18:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 20:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',3,'kkk123',1,80,TO_DATE('2020/08/22 20:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 23:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',4,'kkk123',1,80,TO_DATE('2020/08/22 23:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 01:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',5,'kkk123',2,80,TO_DATE('2020/08/22 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 11:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',6,'kkk123',2,80,TO_DATE('2020/08/22 12:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 14:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',7,'kkk123',2,80,TO_DATE('2020/08/22 14:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 17:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',8,'kkk123',2,80,TO_DATE('2020/08/22 17:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 19:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',1,'kkk123',2,80,TO_DATE('2020/08/22 20:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 22:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',2,'kkk123',2,80,TO_DATE('2020/08/22 22:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 01:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',3,'kkk123',3,80,TO_DATE('2020/08/22 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',4,'kkk123',3,80,TO_DATE('2020/08/22 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',5,'kkk123',3,80,TO_DATE('2020/08/22 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',6,'kkk123',3,80,TO_DATE('2020/08/22 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',7,'kkk123',3,80,TO_DATE('2020/08/22 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/22 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',8,'kkk123',3,80,TO_DATE('2020/08/22 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 00:42:00','yyyy/mm/dd hh24:mi:ss'));
commit;














insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',1,'kkk123',1,80,TO_DATE('2020/08/23 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',2,'kkk123',1,80,TO_DATE('2020/08/23 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',3,'kkk123',1,80,TO_DATE('2020/08/23 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',4,'kkk123',1,80,TO_DATE('2020/08/23 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',5,'kkk123',1,80,TO_DATE('2020/08/23 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',6,'kkk123',2,80,TO_DATE('2020/08/23 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',7,'kkk123',2,80,TO_DATE('2020/08/23 14:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 16:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',8,'kkk123',2,80,TO_DATE('2020/08/23 18:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 20:23:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',1,'kkk123',2,80,TO_DATE('2020/08/23 21:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 23:47:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',2,'kkk123',3,80,TO_DATE('2020/08/23 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',3,'kkk123',3,80,TO_DATE('2020/08/23 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',4,'kkk123',3,80,TO_DATE('2020/08/23 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',5,'kkk123',3,80,TO_DATE('2020/08/23 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',6,'kkk123',3,80,TO_DATE('2020/08/23 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',7,'kkk123',3,80,TO_DATE('2020/08/23 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',8,'kkk123',1,80,TO_DATE('2020/08/23 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',1,'kkk123',1,80,TO_DATE('2020/08/23 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',2,'kkk123',1,80,TO_DATE('2020/08/23 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',3,'kkk123',1,80,TO_DATE('2020/08/23 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',4,'kkk123',1,80,TO_DATE('2020/08/23 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',5,'kkk123',2,80,TO_DATE('2020/08/23 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',6,'kkk123',2,80,TO_DATE('2020/08/23 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 17:37:00','yyyy/mm/dd hh24:mi:ss'));


insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',7,'kkk123',2,80,TO_DATE('2020/08/23 19:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 21:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',8,'kkk123',2,80,TO_DATE('2020/08/23 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 00:37:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',1,'kkk123',3,80,TO_DATE('2020/08/23 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',2,'kkk123',3,80,TO_DATE('2020/08/23 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',3,'kkk123',3,80,TO_DATE('2020/08/23 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',4,'kkk123',3,80,TO_DATE('2020/08/23 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',5,'kkk123',3,80,TO_DATE('2020/08/23 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',6,'kkk123',3,80,TO_DATE('2020/08/23 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',7,'kkk123',1,80,TO_DATE('2020/08/23 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 11:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',8,'kkk123',1,80,TO_DATE('2020/08/23 12:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 15:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',1,'kkk123',1,80,TO_DATE('2020/08/23 15:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 17:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',2,'kkk123',1,80,TO_DATE('2020/08/23 18:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 20:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',3,'kkk123',1,80,TO_DATE('2020/08/23 20:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 23:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',4,'kkk123',1,80,TO_DATE('2020/08/23 23:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 01:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',5,'kkk123',2,80,TO_DATE('2020/08/23 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 11:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',6,'kkk123',2,80,TO_DATE('2020/08/23 12:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 14:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',7,'kkk123',2,80,TO_DATE('2020/08/23 14:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 17:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',8,'kkk123',2,80,TO_DATE('2020/08/23 17:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 19:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',1,'kkk123',2,80,TO_DATE('2020/08/23 20:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 22:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',2,'kkk123',2,80,TO_DATE('2020/08/23 22:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 01:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',3,'kkk123',3,80,TO_DATE('2020/08/23 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',4,'kkk123',3,80,TO_DATE('2020/08/23 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',5,'kkk123',3,80,TO_DATE('2020/08/23 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',6,'kkk123',3,80,TO_DATE('2020/08/23 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',7,'kkk123',3,80,TO_DATE('2020/08/23 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/23 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',8,'kkk123',3,80,TO_DATE('2020/08/23 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 00:42:00','yyyy/mm/dd hh24:mi:ss'));
commit;












insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',1,'kkk123',1,80,TO_DATE('2020/08/24 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',2,'kkk123',1,80,TO_DATE('2020/08/24 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',3,'kkk123',1,80,TO_DATE('2020/08/24 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',4,'kkk123',1,80,TO_DATE('2020/08/24 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',5,'kkk123',1,80,TO_DATE('2020/08/24 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',6,'kkk123',2,80,TO_DATE('2020/08/24 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',7,'kkk123',2,80,TO_DATE('2020/08/24 14:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 16:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',8,'kkk123',2,80,TO_DATE('2020/08/24 18:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 20:23:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',1,'kkk123',2,80,TO_DATE('2020/08/24 21:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 23:47:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',2,'kkk123',3,80,TO_DATE('2020/08/24 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',3,'kkk123',3,80,TO_DATE('2020/08/24 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',4,'kkk123',3,80,TO_DATE('2020/08/24 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',5,'kkk123',3,80,TO_DATE('2020/08/24 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',6,'kkk123',3,80,TO_DATE('2020/08/24 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',7,'kkk123',3,80,TO_DATE('2020/08/24 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',8,'kkk123',1,80,TO_DATE('2020/08/24 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',1,'kkk123',1,80,TO_DATE('2020/08/24 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',2,'kkk123',1,80,TO_DATE('2020/08/24 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',3,'kkk123',1,80,TO_DATE('2020/08/24 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',4,'kkk123',1,80,TO_DATE('2020/08/24 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',5,'kkk123',2,80,TO_DATE('2020/08/24 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',6,'kkk123',2,80,TO_DATE('2020/08/24 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 17:37:00','yyyy/mm/dd hh24:mi:ss'));


insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',7,'kkk123',2,80,TO_DATE('2020/08/24 19:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 21:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',8,'kkk123',2,80,TO_DATE('2020/08/24 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 00:37:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',1,'kkk123',3,80,TO_DATE('2020/08/24 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',2,'kkk123',3,80,TO_DATE('2020/08/24 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',3,'kkk123',3,80,TO_DATE('2020/08/24 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',4,'kkk123',3,80,TO_DATE('2020/08/24 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',5,'kkk123',3,80,TO_DATE('2020/08/24 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',6,'kkk123',3,80,TO_DATE('2020/08/24 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',7,'kkk123',1,80,TO_DATE('2020/08/24 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 11:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',8,'kkk123',1,80,TO_DATE('2020/08/24 12:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 15:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',1,'kkk123',1,80,TO_DATE('2020/08/24 15:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 17:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',2,'kkk123',1,80,TO_DATE('2020/08/24 18:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 20:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',3,'kkk123',1,80,TO_DATE('2020/08/24 20:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 23:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',4,'kkk123',1,80,TO_DATE('2020/08/24 23:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 01:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',5,'kkk123',2,80,TO_DATE('2020/08/24 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 11:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',6,'kkk123',2,80,TO_DATE('2020/08/24 12:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 14:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',7,'kkk123',2,80,TO_DATE('2020/08/24 14:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 17:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',8,'kkk123',2,80,TO_DATE('2020/08/24 17:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 19:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',1,'kkk123',2,80,TO_DATE('2020/08/24 20:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 22:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',2,'kkk123',2,80,TO_DATE('2020/08/24 22:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 01:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',3,'kkk123',3,80,TO_DATE('2020/08/24 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',4,'kkk123',3,80,TO_DATE('2020/08/24 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',5,'kkk123',3,80,TO_DATE('2020/08/24 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',6,'kkk123',3,80,TO_DATE('2020/08/24 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',7,'kkk123',3,80,TO_DATE('2020/08/24 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/24 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',8,'kkk123',3,80,TO_DATE('2020/08/24 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 00:42:00','yyyy/mm/dd hh24:mi:ss'));
commit;











insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',1,'kkk123',1,80,TO_DATE('2020/08/25 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',2,'kkk123',1,80,TO_DATE('2020/08/25 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',3,'kkk123',1,80,TO_DATE('2020/08/25 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',4,'kkk123',1,80,TO_DATE('2020/08/25 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',5,'kkk123',1,80,TO_DATE('2020/08/25 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',6,'kkk123',2,80,TO_DATE('2020/08/25 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',7,'kkk123',2,80,TO_DATE('2020/08/25 14:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 16:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',8,'kkk123',2,80,TO_DATE('2020/08/25 18:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 20:23:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',1,'kkk123',2,80,TO_DATE('2020/08/25 21:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 23:47:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',2,'kkk123',3,80,TO_DATE('2020/08/25 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',3,'kkk123',3,80,TO_DATE('2020/08/25 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',4,'kkk123',3,80,TO_DATE('2020/08/25 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',5,'kkk123',3,80,TO_DATE('2020/08/25 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',6,'kkk123',3,80,TO_DATE('2020/08/25 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',7,'kkk123',3,80,TO_DATE('2020/08/25 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',8,'kkk123',1,80,TO_DATE('2020/08/25 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',1,'kkk123',1,80,TO_DATE('2020/08/25 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',2,'kkk123',1,80,TO_DATE('2020/08/25 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',3,'kkk123',1,80,TO_DATE('2020/08/25 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',4,'kkk123',1,80,TO_DATE('2020/08/25 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',5,'kkk123',2,80,TO_DATE('2020/08/25 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',6,'kkk123',2,80,TO_DATE('2020/08/25 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 17:37:00','yyyy/mm/dd hh24:mi:ss'));


insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',7,'kkk123',2,80,TO_DATE('2020/08/25 19:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 21:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',8,'kkk123',2,80,TO_DATE('2020/08/25 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 00:37:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',1,'kkk123',3,80,TO_DATE('2020/08/25 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',2,'kkk123',3,80,TO_DATE('2020/08/25 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',3,'kkk123',3,80,TO_DATE('2020/08/25 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',4,'kkk123',3,80,TO_DATE('2020/08/25 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',5,'kkk123',3,80,TO_DATE('2020/08/25 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',6,'kkk123',3,80,TO_DATE('2020/08/25 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',7,'kkk123',1,80,TO_DATE('2020/08/25 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 11:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',8,'kkk123',1,80,TO_DATE('2020/08/25 12:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 15:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',1,'kkk123',1,80,TO_DATE('2020/08/25 15:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 17:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',2,'kkk123',1,80,TO_DATE('2020/08/25 18:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 20:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',3,'kkk123',1,80,TO_DATE('2020/08/25 20:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 23:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',4,'kkk123',1,80,TO_DATE('2020/08/25 23:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 01:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',5,'kkk123',2,80,TO_DATE('2020/08/25 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 11:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',6,'kkk123',2,80,TO_DATE('2020/08/25 12:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 14:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',7,'kkk123',2,80,TO_DATE('2020/08/25 14:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 17:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',8,'kkk123',2,80,TO_DATE('2020/08/25 17:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 19:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',1,'kkk123',2,80,TO_DATE('2020/08/25 20:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 22:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',2,'kkk123',2,80,TO_DATE('2020/08/25 22:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 01:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',3,'kkk123',3,80,TO_DATE('2020/08/25 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',4,'kkk123',3,80,TO_DATE('2020/08/25 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',5,'kkk123',3,80,TO_DATE('2020/08/25 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',6,'kkk123',3,80,TO_DATE('2020/08/25 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',7,'kkk123',3,80,TO_DATE('2020/08/25 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/25 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',8,'kkk123',3,80,TO_DATE('2020/08/25 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 00:42:00','yyyy/mm/dd hh24:mi:ss'));
commit;









insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',1,'kkk123',1,80,TO_DATE('2020/08/26 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',2,'kkk123',1,80,TO_DATE('2020/08/26 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',3,'kkk123',1,80,TO_DATE('2020/08/26 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',4,'kkk123',1,80,TO_DATE('2020/08/26 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',5,'kkk123',1,80,TO_DATE('2020/08/26 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',6,'kkk123',2,80,TO_DATE('2020/08/26 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',7,'kkk123',2,80,TO_DATE('2020/08/26 14:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 16:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',8,'kkk123',2,80,TO_DATE('2020/08/26 18:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 20:23:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',1,'kkk123',2,80,TO_DATE('2020/08/26 21:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 23:47:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',2,'kkk123',3,80,TO_DATE('2020/08/26 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',3,'kkk123',3,80,TO_DATE('2020/08/26 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',4,'kkk123',3,80,TO_DATE('2020/08/26 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',5,'kkk123',3,80,TO_DATE('2020/08/26 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',6,'kkk123',3,80,TO_DATE('2020/08/26 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',7,'kkk123',3,80,TO_DATE('2020/08/26 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',8,'kkk123',1,80,TO_DATE('2020/08/26 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',1,'kkk123',1,80,TO_DATE('2020/08/26 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',2,'kkk123',1,80,TO_DATE('2020/08/26 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',3,'kkk123',1,80,TO_DATE('2020/08/26 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',4,'kkk123',1,80,TO_DATE('2020/08/26 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',5,'kkk123',2,80,TO_DATE('2020/08/26 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',6,'kkk123',2,80,TO_DATE('2020/08/26 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 17:37:00','yyyy/mm/dd hh24:mi:ss'));


insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',7,'kkk123',2,80,TO_DATE('2020/08/26 19:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 21:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',8,'kkk123',2,80,TO_DATE('2020/08/26 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 00:37:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',1,'kkk123',3,80,TO_DATE('2020/08/26 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',2,'kkk123',3,80,TO_DATE('2020/08/26 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',3,'kkk123',3,80,TO_DATE('2020/08/26 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',4,'kkk123',3,80,TO_DATE('2020/08/26 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',5,'kkk123',3,80,TO_DATE('2020/08/26 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',6,'kkk123',3,80,TO_DATE('2020/08/26 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',7,'kkk123',1,80,TO_DATE('2020/08/26 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 11:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',8,'kkk123',1,80,TO_DATE('2020/08/26 12:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 15:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',1,'kkk123',1,80,TO_DATE('2020/08/26 15:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 17:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',2,'kkk123',1,80,TO_DATE('2020/08/26 18:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 20:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',3,'kkk123',1,80,TO_DATE('2020/08/26 20:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 23:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',4,'kkk123',1,80,TO_DATE('2020/08/26 23:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 01:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',5,'kkk123',2,80,TO_DATE('2020/08/26 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 11:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',6,'kkk123',2,80,TO_DATE('2020/08/26 12:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 14:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',7,'kkk123',2,80,TO_DATE('2020/08/26 14:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 17:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',8,'kkk123',2,80,TO_DATE('2020/08/26 17:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 19:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',1,'kkk123',2,80,TO_DATE('2020/08/26 20:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 22:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',2,'kkk123',2,80,TO_DATE('2020/08/26 22:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 01:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',3,'kkk123',3,80,TO_DATE('2020/08/26 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',4,'kkk123',3,80,TO_DATE('2020/08/26 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',5,'kkk123',3,80,TO_DATE('2020/08/26 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',6,'kkk123',3,80,TO_DATE('2020/08/26 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',7,'kkk123',3,80,TO_DATE('2020/08/26 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/26 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',8,'kkk123',3,80,TO_DATE('2020/08/26 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 00:42:00','yyyy/mm/dd hh24:mi:ss'));
commit;









insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',1,'kkk123',1,80,TO_DATE('2020/08/27 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',2,'kkk123',1,80,TO_DATE('2020/08/27 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',3,'kkk123',1,80,TO_DATE('2020/08/27 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',4,'kkk123',1,80,TO_DATE('2020/08/27 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-1',5,'kkk123',1,80,TO_DATE('2020/08/27 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',6,'kkk123',2,80,TO_DATE('2020/08/27 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',7,'kkk123',2,80,TO_DATE('2020/08/27 14:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 16:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',8,'kkk123',2,80,TO_DATE('2020/08/27 18:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 20:23:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-2',1,'kkk123',2,80,TO_DATE('2020/08/27 21:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 23:47:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',2,'kkk123',3,80,TO_DATE('2020/08/27 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',3,'kkk123',3,80,TO_DATE('2020/08/27 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',4,'kkk123',3,80,TO_DATE('2020/08/27 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',5,'kkk123',3,80,TO_DATE('2020/08/27 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',6,'kkk123',3,80,TO_DATE('2020/08/27 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'k-3',7,'kkk123',3,80,TO_DATE('2020/08/27 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/28 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',8,'kkk123',1,80,TO_DATE('2020/08/27 10:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 12:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',1,'kkk123',1,80,TO_DATE('2020/08/27 12:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 15:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',2,'kkk123',1,80,TO_DATE('2020/08/27 15:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 17:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',3,'kkk123',1,80,TO_DATE('2020/08/27 18:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 20:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-1',4,'kkk123',1,80,TO_DATE('2020/08/27 20:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 23:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',5,'kkk123',2,80,TO_DATE('2020/08/27 10:35:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 12:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',6,'kkk123',2,80,TO_DATE('2020/08/27 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 17:37:00','yyyy/mm/dd hh24:mi:ss'));


insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',7,'kkk123',2,80,TO_DATE('2020/08/27 19:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 21:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-2',8,'kkk123',2,80,TO_DATE('2020/08/27 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/28 00:37:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',1,'kkk123',3,80,TO_DATE('2020/08/27 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',2,'kkk123',3,80,TO_DATE('2020/08/27 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',3,'kkk123',3,80,TO_DATE('2020/08/27 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',4,'kkk123',3,80,TO_DATE('2020/08/27 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',5,'kkk123',3,80,TO_DATE('2020/08/27 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'h-3',6,'kkk123',3,80,TO_DATE('2020/08/27 22:25:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/28 00:47:00','yyyy/mm/dd hh24:mi:ss'));





insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',7,'kkk123',1,80,TO_DATE('2020/08/27 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 11:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',8,'kkk123',1,80,TO_DATE('2020/08/27 12:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 15:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',1,'kkk123',1,80,TO_DATE('2020/08/27 15:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 17:57:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',2,'kkk123',1,80,TO_DATE('2020/08/27 18:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 20:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',3,'kkk123',1,80,TO_DATE('2020/08/27 20:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 23:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-1',4,'kkk123',1,80,TO_DATE('2020/08/27 23:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/28 01:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',5,'kkk123',2,80,TO_DATE('2020/08/27 09:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 11:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',6,'kkk123',2,80,TO_DATE('2020/08/27 12:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 14:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',7,'kkk123',2,80,TO_DATE('2020/08/27 14:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 17:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',8,'kkk123',2,80,TO_DATE('2020/08/27 17:30:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 19:52:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',1,'kkk123',2,80,TO_DATE('2020/08/27 20:10:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 22:32:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-2',2,'kkk123',2,80,TO_DATE('2020/08/27 22:50:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/28 01:12:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',3,'kkk123',3,80,TO_DATE('2020/08/27 09:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 11:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',4,'kkk123',3,80,TO_DATE('2020/08/27 11:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 14:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',5,'kkk123',3,80,TO_DATE('2020/08/27 14:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 16:42:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',6,'kkk123',3,80,TO_DATE('2020/08/27 17:00:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 19:22:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',7,'kkk123',3,80,TO_DATE('2020/08/27 19:40:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/27 22:02:00','yyyy/mm/dd hh24:mi:ss'));

insert into timetable(TIMETABLE_NUMBER, CINEMA_CODE, MOVIE_CODE, MEMBERS_ID, TIMETABLE_HOLE, TIMETABLE_TOTALSEAT,
TIMETABLE_START, TIMETABLE_END) 
values(TIMETABLE_SEQUENCE.nextval,'i-3',8,'kkk123',3,80,TO_DATE('2020/08/27 22:20:00','yyyy/mm/dd hh24:mi:ss'),TO_DATE('2020/08/28 00:42:00','yyyy/mm/dd hh24:mi:ss'));
commit;
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(1,'�˶��',123,'�˶��.jpg');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(2,'��ũ����Ʈ',234,'��ũ����Ʈ.jpg');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(3,'������ ã�Ƽ�',345,'����.png');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(4,'���������� ��ȸ',456,'���������� ��ȸ.jpg');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(5,'�Ľ�����',567,'�Ľ�����.jpg');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(6,'Ÿ��Ÿ��',678,'Ÿ��Ÿ��.jpg');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(7,'�ϵ���',789,'�ϵ���.jpg');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(8,'�����',891,'�����.jpg');
