create user lcb
IDENTIFIED by lcb;

select * from all_users;
--권한 부여
grant resource, connect to lcb;

alter user lcb default tablespace users quota unlimited on users;