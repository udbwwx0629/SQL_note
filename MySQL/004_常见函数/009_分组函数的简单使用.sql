-- 1、简单 的使用
select sum(salary) from employees;
select avg(salary) from employees;
select min(salary) from employees;
select max(salary) from employees;
select count(salary) from employees;

select sum(salary) 和,avg(salary) 平均,max(salary) 最高,min(salary) 最低,count(salary) 个数 from employees;

select sum(salary) 和,round(avg(salary),2) 平均,max(salary) 最高,min(salary) 最低,count(salary) 个数 from employees;
