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
VALUES('k-1','kkk123', '강남','1관',3);
insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('k-2','kkk123', '강남','2관',3);
insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('k-3','kkk123', '강남','3관',3);

insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('h-1','kkk123', '홍대','1관',3);
insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('h-2','kkk123', '홍대','2관',3);
insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('h-3','kkk123', '홍대','3관',3);

insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('i-1','kkk123', '일산','1관',3);
insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('i-2','kkk123', '일산','2관',3);
insert into CINEMA(CINEMA_CODE, MEMBERS_ID, CINEMA_LOCATION, CINEMA_NAME, CINEMA_MAXHOLE)
VALUES('i-3','kkk123', '일산','MX관',3);
insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','반도',0,0,200,'장르:액션
드라마 / 한국2020.07.15 개봉116분 감독: 연상호
출연:강동원, 이정현, 권해효, 김민재, 구교환','시놉시스 전대미문의 재난 그 후 4년 폐허의 땅으로 다시 들어간다! 4년 전, 나라 전체를 휩쓸어버린 전대미문의 재난에서 가까스로 탈출했던 ‘정석’(강동원). 바깥세상으로부터 철저히 고립된 반도에 다시 들어가야 하는 피할 수 없는 제안을 받는다. 제한 시간 내에 지정된 트럭을 확보해 반도를 빠져 나와야 하는 미션을 수행하던 중 인간성을 상실한 631부대와 4년 전보다 더욱 거세진 대규모 좀비 무리가 정석 일행을 습격한다. 절체절명의 순간, 폐허가 된 땅에서 살아남은 ‘민정’(이정현) 가족의 도움으로 위기를 가까스로 모면하고 이들과 함께 반도를 탈출할 수 있는 마지막 기회를 잡기로 한다. 되돌아온 자, 살아남은 자 그리고 미쳐버린 자 필사의 사투가 시작된다!',
'성별: 남성 40.0% | 여성 60.1%
연령: 10대: 5.2% | 20대: 36.5% | 30대: 30.5% | 40대: 이상 27.9%','반도.jpg',sysdate,0);

insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','온워드',0,0,200,'감독:댄 스캔론 /출연:출연톰 홀랜드(이안 라이트풋 목소리), 크리스 프랫(발리 라이트풋 목소리), 줄리아 루이스 드레이퍼스(로렐 라이트풋 목소리)','마법이 허락된 단 하루, 지금 만나고 싶은 사람이 있나요?
마법이 사라진 세상에 살고 있는 취향과 성격 모두 정반대의 두 형제인
 철든 동생 ‘이안’(톰 홀랜드)과 의욕충만 형 ‘발리’(크리스 프랫).
 
 ‘이안’은 태어나서 얼굴도 본 적 없는 아빠를 그리워하던 중, 서프라이즈 생일 선물로
 아빠의 마법 지팡이를 받게 된다. 그러나 실수로, 아빠의 반쪽만 소환시키는 위기가 발생하는데!!
 
 주어진 시간은 단 하루, 두 형제는 완벽한 모습의 아빠를 찾기 위해 모험을 떠나고
 마법으로 절벽을 건너고, 까마귀 봉우리의 힌트를 따라 관문을 통과하지만
 서로 다른 성격으로 인해, 사사건건 부딪히게 되고, 위험이 발생하는데…
 과연 이들은 무사히 기적을 이룰 수 있을까?
 
 기적을 향한 출발, 지금 당신을 만나러 갑니다.',
'성별: 남자 31% | 여자 69% 연령: 4% 10대 42% 20대 33% 30대 19% 40대 1% 50대이상','온워드.jpg',sysdate,0);


insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','알라딘',0,0,200,'감독 : 감독 : 가이 리치 / 배우 : 메나 마수드 , 윌 스미스 , 나오미 스콧 장르 : 어드벤처, 가족, 환타지 / 기본 : 전체, 128분, 미국 개봉 : 2020.07.22(재개봉) 4DX예매',
'머나먼 사막 속 신비의 아그라바 왕국의 시대. 좀도둑 ‘알라딘’은 마법사 ‘자파’의 의뢰로 마법 램프를 찾아 나섰다가 주인에게 세 가지 소원을 들어주는 지니를 만나게 되고, 자스민 공주의 마음을 얻으려다 생각도 못했던 모험에 휘말리게 되는데…',
'성별: 남성 29.0% | 여성 41.0%
연령: 10대: 2.6% | 20대: 38.0% | 30대: 28.4% | 40대: 이상 30.3%',
'알라딘.jpg',sysdate,0);
insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','살아있다',0,0,200,'장르:액션
드라마 / 한국2020.06.26 개봉98분 감독: 조일형
출연:유아인, 박신혜, 전배수, 이현욱, 오혜원',
'시놉시스 원인불명 증세의 사람들의 공격에 통제 불능에 빠진 도시.

영문도 모른 채 잠에서 깬 ‘준우’(유아인)는 아무도 없는 집에 혼자 고립된 것을 알게 된다. 데이터, 와이파이, 문자, 전화 모든 것이 끊긴 채 고립된 상황. 연락이 두절된 가족에 이어 최소한의 식량마저 바닥이 나자 더 이상 버티기 힘들어진 ‘준우’. 하지만 그 순간 건너편 아파트에서 누군가 시그널을 보내온다. 또 다른 생존자 ‘유빈’(박신혜)이 아직 살아있음을 알게 된 ‘준우’는 함께 살아남기 위한 방법을 찾아 나서는데...! 꼭 살아남아야 한다

#About Movie
1 #대한민국 서울 #인터넷 끊김 #그들이 날뛰는 세상에 #혼자 남겨졌다 2020년 가장 신선한 생존 스릴러 <#살아있다>는 원인불명 증세의 사람들이 공격을 시작하며 통제불능에 빠진 가운데 데이터, 와이파이, 문자, 전화 모든 것이 끊긴 채 홀로 아파트에 고립된 이들의 이야기를 그린 생존 스릴러다. 여느 날과 다름없이 느즈막히 잠에서 깨어나 가족과의 연락이 끊긴 채 아파트에 고립 되었음을 알게 된 ‘준우’. 문밖으로 한 발자국만 나가도 공격 당할 수 있다는 불안과 공포, 하지만 집 안에 숨어 오래 버티기엔 턱없이 부족한 물과 음식, 여기에 무엇보다 견디기 힘든 외로움까지 더해진 ‘준우’의 상황은 지극히 평범한 인물이 가장 일상적인 공간에서 홀로 생존해야 한다는 설정으로 영화적 긴장감과 현실적 공감대를 동시에 자극한다. 여기에 데이터, 와이파이가 의식주만큼 중요한 필수재가 되어버린 2020년, 단순한 물리적 고립뿐 아니라 디지털적으로도 완전히 단절된다는 참신한 설정이 더해져 젊고 차별화된 재미를 만들어낸다. 세상에 혼자 남겨졌다는 ‘준우’의 절망이 극에 달하는 순간, 또 다른 생존자인 ‘유빈’이 등장하며 새로운 전환을 맞이하는 <#살아있다>는 다른 누군가가 살아있다는 사실만으로도 희망과 의지를 갖게 되는 두 사람이 서로 다른 방식으로 위기에 맞서는 모습으로 짜릿한 스릴과 쾌감을 선사한다. 특히 이 과정에서 드론, 휴대폰 등의 디지털 기기부터 손도끼, 아이스픽, 무전기, 산악 캠핑 용품까지 아날로그적인 물건들이 강력한 생존 잇템으로 활용되어 현실적인 재미와 몰입감을 한층 높인다. 대한민국에서 가장 친숙한 공간인 아파트를 주 무대로 설정, 아파트의 구조와 특성 자체가 고립과 위기, 생존을 오가는 극적인 장치로 제 역할을 톡톡히 해내며 영화에 리얼한 생동감을 불어넣는 <#살아있다>. 현실적 공감대를 자극하는 극한의 긴장과 스릴, 이를 극복해가는 과정의 참신함을 갖춘 새로운 생존 스릴러로 2020년 여름 관객들을 사로잡을 것이다.',

'성별: 남자 60% | 여자 40%
연령: 5% 10대 40% 20대 35% 30대 14% 40대 7% 50대이상',
'살아있다.jpg',sysdate,0);

insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','밤쉘',0,0,200,'장르:액션
109분/ 장르: 드라마 / 미국, 캐나다 2020.07.08 개봉 감독: 제이 로치 출연: 샤를리즈 테론, 니콜 키드먼, 마고 로비, 존 리스고, 케이트 맥키넌','판단은 날카롭게, 외침은 당당하게, 행동은 과감하게!

대선후보 토론회에서 트럼프와 설전을 벌인
폭스뉴스의 간판 앵커 메긴 켈리(샤를리즈 테론)는
트럼프의 계속되는 트위터 공격으로 화제의 중심에 선다.

한편, 동료 앵커인 그레천 칼슨(니콜 키드먼)은
‘언론 권력의 제왕’이라 불리는 폭스뉴스 회장을 고소하고
이에 메긴은 물론, 야심 있는 폭스의 뉴페이스
케일라 포스피실(마고 로비) 역시 충격을 감추지 못하는데…

최대 권력을 날려버릴 폭탄선언
이제 이들의 통쾌하고 짜릿한 역전극이 시작된다!',

'성별: 남성 35.0% | 여성 65.0%
연령: 10대: 1.9% | 20대: 33.7% | 30대: 34.6% | 40대: 이상 29.8%',
'밤쉘.jpg',sysdate,0);

insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','블루아워',0,0,200,
'장르:액션
드라마 / 2020.07.15 개봉 감독 : 하코타 유코 배우 : 카호 , 심은경
장르 : 드라마 / 기본 : 12세 이상, 092분, 일본
개봉 : 2020.07.22',
'“나도 모르는 사이 어른이 되어버린 느낌, 너도 알지?”

완벽하게 지친 CF 감독 ''스나다''(카호) 고향으로 오라는 엄마의 전화에 자유로운 친구 ‘기요우라’(심은경)는 당장 떠나자고 말한다. 돌아가고 싶지 않던 그곳이지만, 어쩌면- 괜찮을지도 몰라! 몸과 마음이 지친 당신을 위한',
'성별: 남성 45.0% | 여성 55.0%
연령: 10대: 0.8% | 20대: 29.4% | 30대: 31.5% | 40대: 이상 38.4%',
'블루아워.jpg',
sysdate,0);

insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','소년시절너',0,0,200,'감독 : 증국상 / 배우 : 주동우 , 이양천새 장르 : 로맨스, 멜로, 드라마, 범죄, 가족 / 기본 : 15세 이상, 135분, 중국 개봉 : 2020.07.09','“넌 세상을 지켜, 난 너를 지킬게” 시험만 잘 치면 멋진 인생을 살 수 있다고 가르치는 세상에서 기댈 곳 없이 세상에 내몰린 우등생 소녀 ‘첸니엔’과 양아치 소년 ‘베이’. 비슷한 상처와 외로움에 끌려 서로에게 의지하게 된 두 사람은 수능을 하루 앞둔 어느 날, ‘첸니엔’의 삶을 뒤바꿔버릴 거대한 사건에 휘말리게 된다. ‘첸니엔’만은 평범하고 행복하게 살길 바라는 ‘베이’는 그녀의 그림자가 되어 모든 것을 해결하기로 마음 먹는데… “고마워. 내 세상의 전부, 소년시절의 너.”',

'성별: 남성 32.0% | 여성 68.0%
연령: 10대: 2.6% | 20대: 41.8% | 30대: 26.5% | 40대: 이상 29.8%','소년시절.jpg',sysdate,0);

insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','팬데믹',0,0,200,'장르: 스릴러
2020.07.22 개봉
감독 : 다카시 도셔 배우 : 프리다 핀토, 레슬리 오덤 주니어
기본 : 15세 이상, 097분, 미국','바이러스명 HNV-21, 치사율 100%

노출 즉시 빠른 속도로 죽음에 가까워진다. 어느 날 갑자기 등장해 전 세계를 뒤흔든 의문의 바이러스. 국가 비상사태가 선포된 후',
'성별: 남성 65.0% | 여성 35.0%
연령: 10대: 0.5% | 20대: 19.5% | 30대: 50.0% | 40대: 이상 30.0%','팬데믹.jpg',sysdate,0);

insert into Movie(MOVIE_CODE,MEMBERS_ID,MOVIE_TITLE,MOVIE_person,Reserve_Rate,stack_count,MOVIE_CONTENT1,MOVIE_CONTENT2,MOVIE_preference,MOVIE_IMAGE,MOVIE_REGDATE,MOVIE_HIT)
values(MOVIE_SEQUENCE.nextval,'kkk123','아디오스',0,0,200,'장르 : 액션, 스릴러
감독 : 파코 카베자스 / 배우 : 마리오 카사스 , 나탈리아 드 몰리나 , 루스 디아즈
기본 : 청소년 관람불가, 115분, 스페인
개봉 : 2020.07.22','‘딸이 죽고, 세상은 지옥이 되었다.’ 딸을 잃은 아빠의 처절한 복수가 시작된다!

마약 카르텔의 일원인 ‘후안’은 수감 도중 어린 딸의 첫 성찬식을 위해 외출을 허락받지만 불의의 사고로 딸을 잃게 된다. 자신의 모든 것을 앗아간 범인을 찾아 자비 없는 복수를 다짐하는 ‘후안’. 하지만 사건을 집요하게 파고들수록 믿기 힘든 사실들이 수면 위로 떠오르는데… 사라진 범인, 조작된 사고 진실은 가까운 곳에 있다!',
'성별: 남성 75.0% | 여성 25.0%
연령: 10대: 5.0% | 20대: 20.5% | 30대: 55.5% | 40대: 이상 19.0%','아디오스.jpg',sysdate,0);
commit;
insert into noticeBoard(tno, title, writer, content) values (tno_seq.nextval,'안녕','kkk123','이벤트 입니다');  
-- popcorn.xml에 들어갈 값 
--1--
 insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','즉석구이콤보','팝콘(R) 1 + 탄산음료(R) 2 + 즉석구이오징어 몸or다리 1','▶사용가능극장
※ 사용제외지점: 삼천포점, 센트럴점


*유효기간*

구매일로부터 2년 이내 사용 가능

예매 가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권 사용 당일에만 교환 가능합니다.


++판매수량++

1회 8개 구매가능

!!구매 후 취소!!

구매일로부터 10일 이내 취소 가능하며, 부분취소는 불가능합니다.

구매일로부터 10일까지 취소 가능하며, 부분취소는 불가합니다. (패키지품목 개별취소 불가)','■ 연장/취소/환불 안내

본 상품은 구매일로부터 10일 이내에 취소 가능합니다.
- 유효기간은 본 상품의 유효기간 내에서 연장 신청이 가능하며, 1회 연장 시 3개월(92일) 단위로 연장됩니다.
- 구매일로부터 5년까지 유효기간 연장이 가능합니다.
- 최초 유효기간 만료 후에는 결제금액의 90%에 대해 환불 요청 가능하며, 환불 처리에 7일 이상의 시간이 소요될 수 있습니다. (접수처: 1544-0070)
- 구매 취소 및 환불 요청은 미사용 상품에 한해 가능하며, 사용한 상품에 대해서는 불가합니다.
- 본 상품은 현금으로 환불이 불가합니다.
 ※ 2020년 2월 4일 이후 구매 상품에 한하여 유효기간 연장 신청이 가능합니다.','■ 사용가능 지점
구매 전 사용가능 지점을 반드시 확인해주세요!
- 서울 : 강남, 동대문, 마곡, 목동, 상봉, 상암월드컵경기장, 성수, 신촌, 이수, 코엑스, 홍대, 화곡
- 인천/경기 : 고양스타필드, 백석, 부천스타필드시티, 분당, 수원, 영통, 의정부민락, 킨텍스, 파주출판도시, 평택, 하남스타필드, 송도, 청라
- 대전/충청 : 대전, 대전유성, 대전중앙로, 세종나성, 천안
- 부산/경상 : 구미강동, 남포항, 대구(칠성로), 대구신세계(동대구), 마산, 문경, 부산대, 양산라피에스타, 울산, 창원, 해운대(장산)

■ 이용 안내
본 상품의 사용 기한은 구매일로부터 92일까지입니다.
- 영화관 매점에서 스토어 쿠폰번호 제시 후 상품으로 교환하실 수 있습니다.
- 본 상품은 온라인 전용 판매 상품으로 현장 구매는 불가합니다.
- 구매한 상품은 “나의 메가박스 > 스토어 구매내역”에서 확인할 수 있습니다.
- 팝콘 및 음료의 맛, 크기, 종류 변경 시 추가 금액이 발생할 수 있습니다.
- 상기 이미지는 실제 제품과 다를 수 있습니다.','https://img.megabox.co.kr/SharedImg/store/2020/03/17/4IdTDK4CS2PxFmMMJTozULSROsPzufHw_280.png',13000);

--2--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','반반에이드콤보','반반팝콘(L) 1 + 에이드 2','▶사용가능극장
※ 전국 사용 가능


*유효기간*

구매일로부터 2년 이내 사용 가능

예매 가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권 사용 당일에만 교환 가능합니다.


++판매수량++

1회 8개 구매가능

!!구매 후 취소!!

구매일로부터 10일 이내 취소 가능하며, 부분취소는 불가능합니다.

구매일로부터 10일까지 취소 가능하며, 부분취소는 불가합니다. (패키지품목 개별취소 불가)','■ 연장/취소/환불 안내
본 상품은 구매일로부터 10일 이내에 취소 가능합니다.
- 유효기간은 본 상품의 유효기간 내에서 연장 신청이 가능하며, 1회 연장 시 3개월(92일) 단위로 연장됩니다.
- 구매일로부터 5년까지 유효기간 연장이 가능합니다.
- 최초 유효기간 만료 후에는 결제금액의 90%에 대해 환불 요청 가능하며, 환불 처리에 7일 이상의 시간이 소요될 수 있습니다. (접수처: 1544-0070)
- 구매 취소 및 환불 요청은 미사용 상품에 한해 가능하며, 사용한 상품에 대해서는 불가합니다.
- 본 상품은 현금으로 환불이 불가합니다.
 ※ 2020년 2월 4일 이후 구매 상품에 한하여 유효기간 연장 신청이 가능합니다.','■ 사용가능 지점 : 전국 사용 가능

■ 이용 안내 본 상품의 사용 기한은 구매일로부터 92일까지입니다. - 영화관 매점에서 스토어 쿠폰번호 제시 후 상품으로 교환하실 수 있습니다. - 본 상품은 온라인 전용 판매 상품으로 현장 구매는 불가합니다. - 구매한 상품은 “나의 메가박스 > 스토어 구매내역”에서 확인할 수 있습니다. - 팝콘 및 음료의 맛, 크기, 종류 변경 시 추가 금액이 발생할 수 있습니다. - 상기 이미지는 실제 제품과 다를 수 있습니다.
','https://img.megabox.co.kr/SharedImg/store/2020/03/17/nRR553PK3zMFtaiYav781vbrTZzIDpFO_280.png',13000);

--3--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','일반관람권','일반관람권 1개','▶사용가능극장
※ 일부 특별관(더부티크, MX, 더퍼스트클럽, 키즈관) 및 특별석(발코니, 커플석, 로얄석 등)은 차액지불과 상관없이 사용 불가합니다.


*유효기간*

구매일로부터 2년 이내 사용 가능

예매 가능 유효기간은 구매일로부터 2년 입니다.


++판매수량++

1회 8개 구매가능

!!구매 후 취소!!

구매일로부터 10일 이내 취소 가능하며, 부분취소는 불가능합니다.

구매일로부터 10일까지 취소 가능하며, 부분취소는 불가합니다. (패키지품목 개별취소 불가)','■ 연장/취소/환불 안내
본 상품은 구매일로부터 10일 이내에 취소 가능합니다.
- 유효기간은 본 상품의 유효기간 내에서 연장 신청이 가능하며, 1회 연장 시 3개월(92일) 단위로 연장됩니다.
- 구매일로부터 5년까지 유효기간 연장이 가능합니다.
- 최초 유효기간 만료 후에는 결제금액의 90%에 대해 환불 요청 가능하며, 환불 처리에 7일 이상의 시간이 소요될 수 있습니다. (접수처: 1544-0070)
- 구매 취소 및 환불 요청은 미사용 상품에 한해 가능하며, 사용한 상품에 대해서는 불가합니다.
- 본 상품은 현금으로 환불이 불가합니다.
 ※ 2020년 2월 4일 이후 구매 상품에 한하여 유효기간 연장 신청이 가능합니다.','본 권은 구매 시 계정으로 자동 등록되며, 등록된 계정에서만 사용 가능합니다.
(단! 선물 받은 PIN번호는 계정 내 스토어 교환권 등록 후 사용 가능합니다.)

본 권의 예매 가능한 유효기간은 구매일로부터 2년입니다.

가격 정책에 따라 티켓금액이 변동 될 수 있으며 이에 대한 차액 환불이 불가합니다. (조조/심야/청소년/어린이/마티네/우대 등)

본 권은 카카오 알림톡을 통해 전송 됩니다. (카카오톡 미설치 또는 미수신 고객은 MMS로 발송)

본 권은 메가박스 홈페이지, 어플, 현장 매표소에서만 예매 가능합니다. (전화예매 및 무인발권기 예매 불가)

어플 및 홈페이지 예매방법: 지점 > 영화명 > 시간 > 인원 > 관람권 및 할인적용 > 제휴 모바일 쿠폰 > 스토어 관람권으로 전송 받은 PIN번호 16자리 입력 > 결제

구매 건당 PIN 번호가 생성됩니다.

메가박스 홈페이지 스토어 구매내역에서 PIN 번호 확인이 가능합니다.

일부 극장 [센트럴점, 일산벨라시타점, 삼천포점, 아트나인점], 특별관 [더 부티크, MX, 더 퍼스트 클럽 등], 특별석(로얄석, 커플석, 발코니 등) 및 특별콘텐트 예매가 불가합니다. (차액 지불 여부 상관없이 예매 불가)

본 권으로 영화 관람 시 메가박스 규정에 의해 일정의 포인트가 적립됩니다.

','https://img.megabox.co.kr/SharedImg/store/2020/07/09/o9qHmEvE7s13Ha2Q9hUhGgZFyZej5JjN_280.jpg',10000);

--4--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','더 부티크 스위트 전용관람권 1개','더 부티크 스위트 전용관람권','▶사용가능극장
※ 사용제외지점: 삼천포점, 센트럴점

*유효기간*

구매일로부터 2년 이내 사용 가능

예매 가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권 사용 당일에만 교환 가능합니다.

++판매수량++

1회 8개 구매가능
!!구매 후 취소!!
구매일로부터 10일까지 취소 가능하며, 부분취소는 불가합니다. (패키지품목 개별취소 불가)','■ 연장/취소/환불 안내
본 상품은 구매일로부터 10일 이내에 취소 가능합니다.
- 유효기간은 본 상품의 유효기간 내에서 연장 신청이 가능하며, 1회 연장 시 3개월(92일) 단위로 연장됩니다.
- 구매일로부터 5년까지 유효기간 연장이 가능합니다.
- 최초 유효기간 만료 후에는 결제금액의 90%에 대해 환불 요청 가능하며, 환불 처리에 7일 이상의 시간이 소요될 수 있습니다. (접수처: 1544-0070)
- 구매 취소 및 환불 요청은 미사용 상품에 한해 가능하며, 사용한 상품에 대해서는 불가합니다.
- 본 상품은 현금으로 환불이 불가합니다.
 ※ 2020년 2월 4일 이후 구매 상품에 한하여 유효기간 연장 신청이 가능합니다.','상품이용안내 
본 상품은 더 부티크 스위트 전용 관람권으로 일반관, 특별관[MX, 더 부티크, 발코니, 더 퍼스트 클럽, 키즈관] 및 특별콘텐트 예매가 불가합니다. (차액 지불 여부 상관 없이 예매 불가)

본 권은 구매 시 계정으로 자동 등록되며, 등록된 계정에서만 사용 가능합니다.
(단! 선물 받은 PIN번호는 계정 내 스토어 교환권 등록 후 사용 가능합니다.)

본 권의 예매 가능한 유효기간은 구매일로부터 2년입니다.

가격 정책에 따라 티켓금액이 변동 될 수 있으며 이에 대한 차액 환불이 불가합니다. (조조/심야/청소년/어린이/마티네/우대 등)

본 권은 카카오 알림톡을 통해 전송 됩니다. (카카오톡 미설치 또는 미수신 고객은 MMS로 발송)

본 권은 메가박스 홈페이지, 어플, 현장매표소에서 예매 가능합니다. (전화예매 및 무인발권기 예매 불가)

어플 및 홈페이지 예매방법: 지점 > 영화명 > 시간 > 인원 > 관람권 및 할인적용 > 제휴 모바일 쿠폰 > 스토어 관람권으로 전송받은 PIN번호 16자리 입력> 결제

구매 건당 PIN 번호가 생성됩니다.

메가박스 홈페이지 스토어 구매내역에서 PIN 번호 확인 가능합니다.

본 권으로 영화 관람 시 메가박스 규정에 의해 일정의 포인트가 적립됩니다.

사용가능지점: 코엑스점, 분당점, 성수점, 하남스타필드점','https://img.megabox.co.kr/SharedImg/store/2020/07/09/FnKsGhjngJcy1sbOVPpnwiKSh61UdhGr_280.jpg',35000);

--5--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','러브콤보패키지','2D 일반관람권 2매 + 러브콤보 팝콘(L)1 + 탄산음료(R)2','▶사용가능극장
 사용제외지점: 삼천포점, 센트럴점, 일산벨라시타점, 아트나인점

+유효기간+

구매일로부터 2년 이내 사용 가능

예매 가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권 사용 당일에만 교환 가능합니다.


++판매수량++

1회 8개 구매가능
!!구매 후 취소!!

구매일로부터 10일 이내 취소 가능하며, 부분취소는 불가능합니다.

구매일로부터 10일까지 취소 가능하며, 부분취소는 불가합니다. (패키지품목 개별취소 불가)','■ 연장/취소/환불 안내
- 본 상품은 구매일로부터 10일 이내에 취소 가능합니다.
- 유효기간은 본 상품의 유효기간 내에서 연장 신청이 가능하며, 1회 연장 시 3개월(92일) 단위로 연장됩니다.
- 구매일로부터 5년까지 유효기간 연장이 가능합니다.
- 최초 유효기간 만료 후에는 결제금액의 90%에 대해 환불 요청 가능하며, 환불 처리에 7일 이상의 시간이 소요될 수 있습니다. (접수처: 1544-0070)
- 구매 취소 및 환불 요청은 미사용 상품에 한해 가능하며, 사용한 상품에 대해서는 불가합니다.
- 구매한 관람권은 일괄 환불만 가능하며, 부분 환불 불가합니다.
  (예 : 2매 이상 한번에 구매 시 모든 관람권을 일괄 취소해야 하며, 낱장의 취소는 불가합니다.)
- 본 상품은 현금으로 환불이 불가합니다.

 ※ 2020년 2월 4일 이후 구매 상품에 한하여 유효기간 연장 신청이 가능합니다.','본 권은 구매 시 계정으로 자동 등록되며, 등록된 계정에서만 사용 가능합니다.
(단! 선물 받은 PIN번호는 계정 내 스토어 교환권 등록 후 사용 가능합니다.)

본 상품 관람권의 예매 가능한 유효기간은 구매일로부터 2년입니다.

본 상품은 일부 지점에서 사용이 불가하오니, 사용불가지점 확인 후 구매결정 하시기 바랍니다.

본 권은 카카오 알림톡을 통해 전송 됩니다. (카카오톡 미설치 또는 미수신 고객은 MMS로 발송)

본 권은 메가박스 홈페이지, 어플, 현장 매표소에서 예매 가능합니다.(전화예매 및 무인발권기 예매 불가)

어플 및 홈페이지 예매방법: 지점 > 영화명 > 시간 > 인원 > 관람권 및 할인적용 > 제휴 모바일 쿠폰 > 스토어 관람권으로 전송받은 PIN번호 16자리 입력> 결제

구매 건당 PIN 번호가 생성됩니다.

메가박스 홈페이지 스토어 구매내역에서 PIN 번호 확인 가능합니다.

가격 정책에 따라 티켓금액이 변동 될 수 있으며 이에 대한 차액 환불이 불가합니다.(조조/심야/청소년/어린이/마티네/우대 등)

매점교환권은 영화관 현장에서 관람권 출력 시 함께 출력되며 관람일 당일에만 사용이 가능합니다.

팝콘과 음료의 사이즈, 맛 변경 시 추가금액이 발생할 수 있으며, 출력된 매점쿠폰을 분실하셨을 경우 재발행이 불가능하오니 주의해주시기 바랍니다.

본 권으로 영화 관람 시 메가박스 규정에 의해 일정의 포인트가 적립됩니다.

사용제외지점 : 삼천포점, 센트럴점, 일산벨라시타점, 아트나인점','https://img.megabox.co.kr/SharedImg/store/2020/07/09/QqF8RMPD8dL6918HjnnMrwyZrjaV9xlA_280.jpg',28000);

--6--
 insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','3D 전용 관람권','3D 전용 관람권','▶사용가능극장
※ 사용제외지점: 삼천포점, 센트럴점


*유효기간*

구매일로부터 2년 이내 사용 가능

예매 가능 유효기간은 구매일로부터 2년이며, 매점쿠폰은 관람권 사용 당일에만 교환 가능합니다.


++판매수량++

1회 8개 구매가능

!!구매 후 취소!!

구매일로부터 10일 이내 취소 가능하며, 부분취소는 불가능합니다.

구매일로부터 10일까지 취소 가능하며, 부분취소는 불가합니다. (패키지품목 개별취소 불가)','■ 연장/취소/환불 안내
본 상품은 구매일로부터 10일 이내에 취소 가능합니다.
- 유효기간은 본 상품의 유효기간 내에서 연장 신청이 가능하며, 1회 연장 시 3개월(92일) 단위로 연장됩니다.
- 구매일로부터 5년까지 유효기간 연장이 가능합니다.
- 최초 유효기간 만료 후에는 결제금액의 90%에 대해 환불 요청 가능하며, 환불 처리에 7일 이상의 시간이 소요될 수 있습니다. (접수처: 1544-0070)
- 구매 취소 및 환불 요청은 미사용 상품에 한해 가능하며, 사용한 상품에 대해서는 불가합니다.
- 본 상품은 현금으로 환불이 불가합니다.
 ※ 2020년 2월 4일 이후 구매 상품에 한하여 유효기간 연장 신청이 가능합니다.','■ 본 권은 3D 일반관 전용 관람권이며 금액권이 아닙니다. (조조/심야/청소년/어린이/우대 관람 시 차액환급 불가)

본 권은 구매 시 계정으로 자동 등록되며, 등록된 계정에서만 사용 가능합니다.
(단! 선물 받은 PIN번호는 계정 내 스토어 교환권 등록 후 사용 가능합니다.)

본 권의 예매가능 유효기간은 구매일로부터 2년입니다.

본 권은 카카오 알림톡을 통해 전송 됩니다. (카카오톡 미설치 또는 미수신 고객은 MMS로 발송)

본 권은 메가박스 홈페이지, 어플, 현장 매표소에서만 예매 가능합니다. (전화예매 및 무인발권기 예매 불가)

어플 및 홈페이지 예매방법 : 지점 > 영화명 > 시간 > 인원 > 관람권 및 할인적용 > 제휴 모바일 쿠폰 > 스토어 관람권으로 전송 받은 PIN번호 16자리 입력 > 결제

다수 관람권 구매 시 PIN번호 개별 입력이 필요합니다

메가박스 홈페이지 스토어 구매내역에서 구매내역 및 번호 확인이 가능하며 MMS 재전송은 본 권 구매 시 등록한 번호로만 재전송이 가능합니다

일부 극장관 및 특별관 (더 부티크, 발코니, 더 퍼스트 클럽, 컴포트, MX, 키즈박스)과 특별콘텐트 예매 시에는 사용하실 수 없습니다.
(차액 지불 여부와 상관없이 사용불가 합니다.)

본 관람권으로 영화 관람 이후 메가박스 멤버십 정책에 따라 일정 포인트가 적립됩니다.','https://img.megabox.co.kr/SharedImg/store/2020/07/13/GgzuIt0bnffZwqjTO1WpDS7FlPJpOxhu_280.jpg',13000);

--7--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','더블콤보','팝콘(R) 2 + 탄산음료(R) 2','▶사용가능극장
전국 지점 사용 가능!!


*유효기간*

구매일로부터 92일 이내 사용 가능


++판매수량++

1회 8개 구매가능

!!구매 후 취소!!

구매일로부터 10일까지 취소 가능하며, 부분취소는 불가합니다. (패키지품목 개별취소 불가)','■ 연장/취소/환불 안내
본 상품은 구매일로부터 10일 이내에 취소 가능합니다.
- 유효기간은 본 상품의 유효기간 내에서 연장 신청이 가능하며, 1회 연장 시 3개월(92일) 단위로 연장됩니다.
- 구매일로부터 5년까지 유효기간 연장이 가능합니다.
- 최초 유효기간 만료 후에는 결제금액의 90%에 대해 환불 요청 가능하며, 환불 처리에 7일 이상의 시간이 소요될 수 있습니다. (접수처: 1544-0070)
- 구매 취소 및 환불 요청은 미사용 상품에 한해 가능하며, 사용한 상품에 대해서는 불가합니다.
- 본 상품은 현금으로 환불이 불가합니다.
 ※ 2020년 2월 4일 이후 구매 상품에 한하여 유효기간 연장 신청이 가능합니다.','■ 사용가능 지점
전국지점 사용 가능

■ 이용 안내
본 상품의 사용 기한은 구매일로부터 92일까지입니다.
- 영화관 매점에서 스토어 쿠폰번호 제시 후 상품으로 교환하실 수 있습니다.
- 본 상품은 온라인 전용 판매 상품으로 현장 구매는 불가합니다.
- 구매한 상품은 “나의 메가박스 > 스토어 구매내역”에서 확인할 수 있습니다.
- 팝콘 및 음료의 맛, 크기, 종류 변경 시 추가 금액이 발생할 수 있습니다.
- 상기 이미지는 실제 제품과 다를 수 있습니다.','https://img.megabox.co.kr/SharedImg/store/2020/03/17/Fzy9gx2Nzf8ZVgUUrjJve5or0mOBj5Tr_280.png',12000);

--8--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','싱글패키지','2D 일반관람권 1매 + 팝콘(R)1 + 탄산음료(R)1','▶사용가능극장
※ 일부 특별관 (더 부티크, 발코니, MX, M, 더 퍼스트 클럽)은 차액지불과 상관없이 사용불가합니다.


*유효기간*

구매일로부터 2년 이내 사용 가능

예매 가능 유효기간은 구매일로부터 2년이내 가능


++판매수량++

1회 8개 구매가능

!!구매 후 취소!!

구매일로부터 10일 이내 취소 가능하며, 부분취소는 불가능합니다.

구매일로부터 10일까지 취소 가능하며, 부분취소는 불가합니다. (패키지품목 개별취소 불가)','■ 연장/취소/환불 안내
본 상품은 구매일로부터 10일 이내에 취소 가능합니다.
- 유효기간은 본 상품의 유효기간 내에서 연장 신청이 가능하며, 1회 연장 시 3개월(92일) 단위로 연장됩니다.
- 구매일로부터 5년까지 유효기간 연장이 가능합니다.
- 최초 유효기간 만료 후에는 결제금액의 90%에 대해 환불 요청 가능하며, 환불 처리에 7일 이상의 시간이 소요될 수 있습니다. (접수처: 1544-0070)
- 구매 취소 및 환불 요청은 미사용 상품에 한해 가능하며, 사용한 상품에 대해서는 불가합니다.
- 본 상품은 현금으로 환불이 불가합니다.
 ※ 2020년 2월 4일 이후 구매 상품에 한하여 유효기간 연장 신청이 가능합니다.','■본 권은 구매 시 계정으로 자동 등록되며, 등록된 계정에서만 사용 가능합니다.
(단! 선물 받은 PIN번호는 계정 내 스토어 교환권 등록 후 사용 가능합니다.)

본 상품 관람권의 예매 가능한 유효기간은 구매일로부터 2년입니다.

본 상품은 일부 지점에서 사용이 불가하오니, 사용불가지점 확인 후 구매결정 하시기 바랍니다.

본 권은 카카오 알림톡을 통해 전송 됩니다. (카카오톡 미설치 또는 미수신 고객은 MMS로 발송)

본 권은 메가박스 홈페이지, 어플, 현장 매표소에서 예매 가능합니다.(전화예매 및 무인발권기 예매 불가)

어플 및 홈페이지 예매방법: 지점 > 영화명 > 시간 > 인원 > 관람권 및 할인적용 > 제휴 모바일 쿠폰 > 스토어 관람권으로 전송받은 PIN번호 16자리 입력 후 결제

구매 건당 PIN 번호가 생성됩니다.

메가박스 홈페이지 스토어 구매내역에서 PIN 번호 확인이 가능합니다.

가격 정책에 따라 티켓금액이 변동 될 수 있으며 이에 대한 차액 환불이 불가합니다.(조조/심야/청소년/어린이/마티네/우대 등)

매점교환권은 영화관 현장에서 관람권 출력 시 함께 출력되며 관람일 당일에만 사용이 가능합니다. 

팝콘과 음료의 사이즈, 맛 변경 시 추가금액이 발생할 수 있으며, 출력된 매점쿠폰을 분실하셨을 경우 재발행이 불가능하오니 주의해주시기 바랍니다.

본 권으로 영화 관람 시 메가박스 규정에 의해 일정의 포인트가 적립됩니다.

사용제외지점 :삼천포점,센트럴점,일산벨라시타점, 아트나인점','https://img.megabox.co.kr/SharedImg/store/2020/07/09/OOLquNfrgYG3ZKRgBh2uOR99LzjiTVPX_280.jpg',16000);
--9--
  insert into popcorn(POPCORN_CODE,MEMBERS_ID,POPCORN_TITLE1,POPCORN_TITLE2,POPCORN_CONTENT1,POPCORN_CONTENT2,POPCORN_CONTENT3,
 POPCORN_IMAGE,POPCORN_PRICE)
 values(POPCORN_CODE_SEQUENCE.nextval,'kkk123','메가패밀리패키지','2D 일반관람권 4매 + 팝콘(R)2 + 음료(R)2 + 나쵸1 + 팩오징어 1','▶사용가능극장
※ 사용제외지점: 코엑스점, 경주점, 공주점, 김천점, 남양주점, 남원점, 동탄점, 부산극장점, 북대구(칠곡)점, 삼천포점, 세종(조치원)점, 센트럴점, 속초점, 순천점, 안산중앙점, 용인테크노밸리점, 원주점, 인천논현점, 일산벨라시타점, 제주점, 제천점, 진천점, 첨단점, 충주점, 파주금촌점, 평택점


*유효기간*

구매일로부터 2년 이내 사용 가능

구매일로부터 10일 이내 취소 가능하며, 부분취소는 불가능합니다.


++판매수량++

1회 8개 구매가능

!!구매 후 취소!!

구매일로부터 10일까지 취소 가능하며, 부분취소는 불가합니다.
(패키지품목 개별취소 불가)','■ 연장/취소/환불 안내
본 상품은 구매일로부터 10일 이내에 취소 가능합니다.
- 유효기간은 본 상품의 유효기간 내에서 연장 신청이 가능하며, 1회 연장 시 3개월(92일) 단위로 연장됩니다.
- 구매일로부터 5년까지 유효기간 연장이 가능합니다.
- 최초 유효기간 만료 후에는 결제금액의 90%에 대해 환불 요청 가능하며, 환불 처리에 7일 이상의 시간이 소요될 수 있습니다. (접수처: 1544-0070)
- 구매 취소 및 환불 요청은 미사용 상품에 한해 가능하며, 사용한 상품에 대해서는 불가합니다.
- 본 상품은 현금으로 환불이 불가합니다.
 ※ 2020년 2월 4일 이후 구매 상품에 한하여 유효기간 연장 신청이 가능합니다.','■본 권은 구매 시 계정으로 자동 등록되며, 등록된 계정에서만 사용 가능합니다.
(단! 선물 받은 PIN번호는 계정 내 스토어 교환권 등록 후 사용 가능합니다.)

본 상품 관람권의 예매 가능한 유효기간은 구매일로부터 2년입니다.

본 상품은 일부 지점에서 사용이 불가하오니, 사용불가지점 확인 후 구매결정 하시기 바랍니다.

본 권은 카카오 알림톡을 통해 전송 됩니다. (카카오톡 미설치 또는 미수신 고객은 MMS로 발송)

본 권은 메가박스 홈페이지, 어플, 현장 매표소에서 예매 가능합니다.(전화예매 및 무인발권기 예매 불가)

어플 및 홈페이지 예매방법: 지점 > 영화명 > 시간 > 인원 > 관람권 및 할인적용 > 제휴 모바일 쿠폰 > 스토어 관람권으로 전송받은 PIN번호 16자리 입력 후 결제

구매 건당 PIN 번호가 생성됩니다.

메가박스 홈페이지 스토어 구매내역에서 PIN 번호 확인이 가능합니다.

가격 정책에 따라 티켓금액이 변동 될 수 있으며 이에 대한 차액 환불이 불가합니다.(조조/심야/청소년/어린이/마티네/우대 등)

매점교환권은 영화관 현장에서 관람권 출력 시 함께 출력되며 관람일 당일에만 사용이 가능합니다. 

팝콘과 음료의 사이즈, 맛 변경 시 추가금액이 발생할 수 있으며, 출력된 매점쿠폰을 분실하셨을 경우 재발행이 불가능하오니 주의해주시기 바랍니다.

본 권으로 영화 관람 시 메가박스 규정에 의해 일정의 포인트가 적립됩니다.

사용제외지점 :삼천포점,센트럴점,일산벨라시타점, 아트나인점','https://img.megabox.co.kr/SharedImg/store/2020/07/09/OkfvQJurbAiapvpqIKd7h0sTcOP2RaHl_280.jpg',50000);
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
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(1,'알라딘',123,'알라딘.jpg');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(2,'다크나이트',234,'다크나이트.jpg');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(3,'도리를 찾아서',345,'도리.png');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(4,'죽은시인의 사회',456,'죽은시인의 사회.jpg');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(5,'식스센스',567,'식스센스.jpg');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(6,'타이타닉',678,'타이타닉.jpg');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(7,'완득이',789,'완득이.jpg');
insert into vote(vote_num,vote_name,vote_cnt,vote_IMG) values(8,'어벤져스',891,'어벤져스.jpg');
