select * from employees;

--where 절 (between, in)
select first_name, last_name, email, job_id from employees where job_id = 'IT_PROG';
select * from employees where last_name = 'King';
select * from employees where hire_date = '04/01/30'; --날짜
select * from employees where salary >= 15000; --숫자
select * from employees where department_id = 90; 

select * from employees where salary  between 15000 and 30000;
select * from employees where salary >= 15000 and salary <= 30000;
select * from employees where hire_date between '03/01/01' and '03/12/31'; --날짜

select * from employees where department_id in (30, 60, 90);
select * from employees where manager_id in (101, 102, 103, 104, 105);
select * from employees where job_id in ('IT_PROG', 'AC_MGR');

--like검색 (%는 모든, _은 한글자 위치를 찾아낼 때)
select first_name || ' ' || last_name as 이름, hire_date as 입사일 from employees where hire_date like '03%'; --03년 입사
select first_name || ' ' || last_name , hire_date from employees where hire_date like '%15'; --15일 입사
select first_name || ' ' || last_name , hire_date from employees where hire_date like '%05%'; --05가 있다면 다 찾음
select first_name || ' ' || last_name , hire_date from employees where hire_date like '___05%'; --05월 입사

select first_name, email from employees where email like '%A%';
select first_name, email from employees where email like '__A%';

--null검사 is null, is not null
select * from employees where manager_id is null;
select * from employees where manager_id is not null;

select * from employees where commission_pct is null;
select * from employees where commission_pct is not null;

--and, or (and가 우선순위가 빠릅니다)
select * from employees where job_id = 'IT_PROG' and salary >= 7000;
select * from employees where job_id = 'IT_PROG' or salary >= 7000;

select * from employees where job_id = 'IT_PROG' or job_id = 'FI_MGR' and salary >= 7000;
select * from employees where (job_id = 'IT_PROG' or job_id = 'FI_MGR') and salary >= 7000; --소괄호 우선순위

--데이터 정렬 (select 구문의 마지막)
select * from employees order by hire_date; 
select * from employees order by hire_date desc;
select * from employees where job_id in( 'IT_PROG', 'SA_REP') order by first_name asc;
select * from employees where salary between 5000 and 10000 order by employee_id desc;
select * from employees where commission_pct is not null order by first_name asc;

select * from employees order by hire_date asc, first_name desc; --입사일 기준 오름차순, 그 안에서 이름 기준 내림차순

select salary + salary * commission_pct as 급여 from employees order by 급여 asc;












