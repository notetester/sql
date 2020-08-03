insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test1','admin1','test1');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test2','admin2','test2');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test3','admin3','test3');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test4','admin4','test4');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test1','admin1','test1');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test2','admin2','test2');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test3','admin3','test3');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test4','admin4','test4');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test1','admin1','test1');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test2','admin2','test2');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test3','admin3','test3');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test4','admin4','test4');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test1','admin1','test1');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test2','admin2','test2');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test3','admin3','test3');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test4','admin4','test4');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test1','admin1','test1');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test2','admin2','test2');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test3','admin3','test3');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test4','admin4','test4');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test1','admin1','test1');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test2','admin2','test2');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test3','admin3','test3');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test4','admin4','test4');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test1','admin1','test1');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test2','admin2','test2');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test3','admin3','test3');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test4','admin4','test4');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test1','admin1','test1');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test2','admin2','test2');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test3','admin3','test3');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test4','admin4','test4');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test1','admin1','test1');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test2','admin2','test2');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test3','admin3','test3');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test4','admin4','test4');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test1','admin1','test1');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test2','admin2','test2');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test3','admin3','test3');
insert into freeboard(bno,writer,title,content) VALUES(FREEBOARD_SEQ.nextval,'test4','admin4','test4');
SELECT count(*) from freeboard;
select *
from (
select rownum as rn,
       bno,
       title,
       writer,
       content,
       regdate,
       updatedate
from (select * from freeboard where title like '%4%' order by bno desc)
) where rn > 0 and rn <=10;
commit;