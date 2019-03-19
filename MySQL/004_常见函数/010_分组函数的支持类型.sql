-- 2、参数支持哪些类型
select sum(last_name) ,avg(last_name) from employees;
select sum(hiredate) ,avg(hiredate) from employees;

select max(last_name),min(last_name) from employees;

select max(hiredate),min(hiredate) from employees;

select count(commission_pct) from employees;
select count(last_name) from employees;