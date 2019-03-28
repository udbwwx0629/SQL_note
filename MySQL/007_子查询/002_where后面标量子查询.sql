-- where或having后面
/*
1、标量子查询（单行子查询）
2、列子查询  （多行子查询）
3、行子查询  （多行多列）
特点：
a.子查询放在小括号内
b.子查询一般放在条件的右侧
c.标量子查询,一般搭配着多行操作符使用
> < >= <= = <>
列子查询,一般搭配着多行操作符使用
IN,ANY/SOME,ALL
d.子查询的执行优先于主查询执行,主查询的条件用到了子查询结果
*/
-- 一 标量子查询

-- 案例1.谁的工资比abel高?
-- 1.查询abel的工资
select salary from employees where last_name= 'Abel';
-- 2.查询员工信息,要求salary比1高
select * from employees where salary >( select salary from employees where last_name ='Abel');

-- 案例2.返回job_id与141员工相同,salary比143号员工多的员工姓名,job_id和工资
-- 1.查询141号的员工job_id
select job_id
from employees
where employee_id=141;
-- 2.查询143号的员工salary
select salary
from employees
where employee_id =143;
-- 3.查询员工姓名,job_id和工资,要求141员工的job_id相同并且 salary比143号多
select last_name,job_id,salary
from employees
where job_id =(select job_id from employees where employee_id=141)
and salary >(select salary from employees where employee_id =143);

-- 案例3:返回公司工资最少的员工的last_name,job_id和salary
-- 1.查询最少的工资
select min(salary) from employees;
-- 2.查询last_name,job_id,salary,要求salary<1结果
select last_name,job_id,salary from employees where salary=(select min(salary) from employees);

-- 案例4:查询最低工资大于50号部门最低工资的部门id和其他最低工资
-- 1.查询50号部门的最低工资
select min(salary) from employees where department_id =50;
-- 2.查询每个部门的最低工资
select min(salary),department_id from employees group by department_id;
-- 3.在2基础上筛选,满足min(salary)>1的结果
select min(salary),department_id from employees group by department_id having min(salary)>(select min(salary) from employees where department_id = 50);

-- 非法使用标量子子查询
-- a.子查询中使用salary,出现列子查询,导致报错
select min(salary),department_id from employees group by department_id having min(salary)>(select salary from employees where department_id = 50);
-- b.子查询中使用id=250的话,出现查询为空,则不出错, 但没有实际意义,则视为非法查询
select min(salary),department_id from employees group by department_id having min(salary)>(select min(salary) from employees where department_id = 250);
