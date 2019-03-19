/*
语法：
select 查询列表
from 表名
【where  筛选条件】
order by 排序的字段或表达式;

特点：
1、asc   代表的是升序，可以省略
   desc  代表的是降序
2、order by子句可以支持 单个字段、别名、表达式、函数、多个字段
3、order by子句在查询语句的最后 面，除了limit子句
*/

-- 1、按单个字段排序
select * from employees order by salary desc;

-- 2、添加筛选条件再排序
-- 案例：查询部门编号>=90的员工信息，并按员工编号降序
select * from employees where department_id>=90 order by employee_id desc;

-- 3、按表达式排序
-- 案例：查询员工信息 按年薪降序
select *,salary*12*(1+IFNULL(commission_pct,0)) from employees order by salary*12*(1+IFNULL(commission_pct,0)) desc;

-- 4、按别名排序
-- 案例：查询员工信息 按年薪升序
select *,salary*12*(1+IFNULL(commission_pct,0)) 年薪 from employees order by 年薪 asc;

-- 5、按函数排序
-- 案例：查询员工名，并且按名字的长度降序
select length(last_name),last_name from employees order by length(last_name) desc;

-- 6、按多个字段排序
-- 案例：查询员工信息，要求先按工资降序，再按employee_id升序
select * from employees order by salary desc,employee_id asc;
