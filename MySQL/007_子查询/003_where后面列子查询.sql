-- 列子查询(多行子查询)
-- 案例1:返回location_id是1400或1700的部门中的所有员工姓名
-- 1.查询location_id是1400或1700的部门编号
select distinct department_id
from departments
where location_id in(1400,1700);
-- 2.查询员工姓名,要求部门号是-- 1列表中的某一个
select last_name
from employees
where department_id in(
                   select distinct department_id
                   from departments
                   where location_id in(1400,1700));
-- 或
select last_name
from employees
where department_id = any(
                   select distinct department_id
                   from departments
                   where location_id in(1400,1700));


select last_name
from employees
where department_id not in(
                   select department_id
                   from departments
                   where location_id in(1400,1700));
-- 或
select last_name
from employees
where department_id <> all (
                   select department_id
                   from departments
                   where location_id in(1400,1700));

-- 案例2:返回其它工种中比job_id为'IT_PROG'工种任一工资低的员工的员工号, 姓名,job_id以及salary
-- 1.查询job_id为IT_PROG部门任一工资
select distinct salary
from employees
where job_id='IT_PROG';
-- 2.查询员工号,姓名,job_id以及salary,salary<-- 1的任意一个
select last_name,employee_id,job_id,salary
from employees
where salary < any (
               select distinct salary
               from employees
               where job_id='IT_PROG')
and job_id <>'IT_PROG';
-- 或
select last_name,employee_id,job_id,salary from employees where salary < (
 select max(salary) from employees where job_id ='IT_PROG'
) and job_id <> 'IT_PROG';

-- 案例3:返回其它部门中比job_id为'IT_PROG'工种所有工资都低的员工的员工号,姓名,job_id以及salary
select last_name,employee_id,job_id,salary from employees where salary<all(
 select distinct salary from employees where job_id='IT_PROG'
) and job_id <> 'IT_PROG';
-- 或
select last_name,employee_id,job_id,salary from employees where salary <(
 select min(salary) from employees where job_id='IT_PROG'
) and job_id<>'IT_PROG';
