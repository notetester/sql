--lower(�ҹ���), initcap(�ձ��ڸ� �빮�ڷ�) , upper(�빮��)
select 'asdDEF' from dual;
select 'asdDEF', lower('asdDEF'), upper('asdDEF') from dual; 

select last_name, lower(last_name), upper(last_name), initcap(last_name) from employees;
select * from employees where lower(last_name) = 'abel';

--length(����), instr(���� ã��)
select 'abcdef' as example, length('abcdef'), instr('abcdef', 'b') from dual;
select first_name, length(first_name), instr(first_name, 'a') from employees;

--substr(���ڿ� �ڸ���), concat(���ڿ� ����)
select 'abcdef' as example, substr('abcdef', 1, 3), concat('�ȳ�', '�ϼ���') from dual;
select first_name, substr(first_name, 1, 2), concat(first_name, last_name) from employees;

--LPAD, RPAD (�� ���� �������ڿ��� ä���)
select LPAD('abc', 10, '*') from dual;
select RPAD('abc', 10, '*') from dual;

--LTRIM, RTRIM, TRIM (��������)
select LTRIM('javascript_java', 'java') from dual; --���� ����
select RTRIM('javascript_java', 'java') from dual; --���� ����
select TRIM('   java   ') from dual; --�� �� ������ ����

--replace(���ڿ�)
select replace('my dream is a president', 'president', 'doctor') from dual;
select replace('my dream is a president', ' ', '') from dual;
select replace(  replace('my dream is a president', 'president', 'doctor') , ' ', '') from dual;
select replace(  concat('hello ', 'world'),' ' , '' ) from dual;



----------------------------------------------------------------------------------------------------
--���� 1
select 
    concat(first_name, last_name) as �̸�,
    replace(hire_date, '/', '') as �Ի����� 
from employees order by �̸� asc;

--����2
select  concat( '(02)', substr(phone_number, 4, length(phone_number)) ) from employees;

--����3
select  
    RPAD( substr(first_name, 1, 3), length(first_name) , '*' ) as name,
    LPAD( salary, 10, '*') as salary
from employees where lower(job_id) = 'it_prog';


