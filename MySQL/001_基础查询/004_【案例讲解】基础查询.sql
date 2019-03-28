-- 1.	下面的语句是否可以执行成功
select last_name , job_id , salary as sal from employees;

-- 2.下面的语句是否可以执行成功
select  *  from employees;

-- 3.找出下面语句中的错误
select employee_id , last_name,salary * 12 as "ANNUAL  SALARY" from employees;

-- 4.显示表departments的结构，并查询其中的全部数据

DESC departments;
select * from `departments`;

-- 5.显示出表employees中的全部job_id（不能重复）
select distinct job_id from employees;

-- 6.显示出表employees的全部列，各个列之间用逗号连接，列头显示成OUT_PUT

select IFNULL(commission_pct,0) as 奖金率,commission_pct from employees;
-- -------------------------------------------
select concat(`first_name`,',',`last_name`,',',`job_id`,',',IFNULL(commission_pct,0)) AS out_put FROM employees;











