-- 1.查询和Zlotkey相同部门的员工姓名和工资
-- 2.查询工资比公司平均工资高的员工的员工号，姓名和工资。
-- 3.查询各部门中工资比本部门平均工资高的员工的员工号, 姓名和工资
-- 4.查询和姓名中包含字母u的员工在相同部门的员工的员工号和姓名
-- 5. 查询在部门的location_id为1700的部门工作的员工的员工号
-- 6.查询管理者是King的员工姓名和工资
-- 7.查询工资最高的员工的姓名，要求first_name和last_name显示为一列，列名为 姓.名
--------------------------------------------------------------------------------------------

-- 1.查询和Zlotkey相同部门的员工姓名和工资
-- ①查询Zlotkey的部门
select department_id
from employees
where last_name = 'Zlotkey'

-- ②查询部门号=①的姓名和工资
select last_name,salary
from employees
where department_id = (
	select department_id
	from employees
	where last_name = 'Zlotkey'
);
?

-- 2.查询工资比公司平均工资高的员工的员工号，姓名和工资。
-- ①查询平均工资
select avg(salary)
from employees

-- ②查询工资>①的员工号，姓名和工资。
select last_name,employee_id,salary
from employees
where salary>(
	select avg(salary)
	from employees
);

-- 3.查询各部门中工资比本部门平均工资高的员工的员工号, 姓名和工资
-- ①查询各部门的平均工资
select avg(salary),department_id
from employees
group by department_id
-- ②连接①结果集和employees表，进行筛选
select employee_id,last_name,salary,e.department_id
from employees e
inner join (
select avg(salary) ag,department_id
from employees
group by department_id   ) ag_dep
on e.department_id = ag_dep.department_id
where salary>ag_dep.ag ;

-- 4.查询和姓名中包含字母u的员工在相同部门的员工的员工号和姓名
-- ①查询姓名中包含字母u的员工的部门
select  distinct department_id
from employees
where last_name like '%u%'
 -- ②查询部门号=①中的任意一个的员工号和姓名
 select last_name,employee_id
 from employees
 where department_id
 in(
 	select  distinct department_id
 	from employees
 where last_name like '%u%' );

-- 5. 查询在部门的location_id为1700的部门工作的员工的员工号
 -- ①查询location_id为1700的部门
 select distinct department_id
 from departments
 where location_id  = 1700
 -- ②查询部门号=①中的任意一个的员工号
 select employee_id
 from employees
 where department_id =any(
 		select distinct department_id
 		from departments
 		where location_id  = 1700  );

-- 6.查询管理者是King的员工姓名和工资
 -- ①查询姓名为king的员工编号
 select employee_id
 from employees
 where last_name  = 'K_ing'
 -- ②查询哪个员工的manager_id = ①
 select last_name,salary
 from employees
 where manager_id in(
  	select employee_id
  	from employees
  	where last_name  = 'K_ing'  );

-- 7.查询工资最高的员工的姓名，要求first_name和last_name显示为一列，列名为 姓.名
-- ①查询最高工资
select max(salary)
from employees
-- ②查询工资=①的姓.名
select concat(first_name,last_name) "姓.名"
from employees
where salary=(
 	select max(salary)
  	from employees  );




