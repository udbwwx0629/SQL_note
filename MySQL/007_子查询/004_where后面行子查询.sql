-- 3、行子查询（结果集一行多列或多行多列）

-- 案例：查询员工编号最小并且工资最高的员工信息

select *
from employees
where (employee_id,salary)=(
	select min(employee_id),max(salary)
	from employees
);

-- ①查询最小的员工编号
select min(employee_id)
from employees

-- ②查询最高工资
select max(salary)
from employees

-- ③查询员工信息
select *
from employees
where employee_id=(
	select min(employee_id)
	from employees
)and salary=(
	select max(salary)
	from employees
);
