create user lcb
IDENTIFIED by lcb;

select * from all_users;
--���� �ο�
grant resource, connect to lcb;

alter user lcb default tablespace users quota unlimited on users;