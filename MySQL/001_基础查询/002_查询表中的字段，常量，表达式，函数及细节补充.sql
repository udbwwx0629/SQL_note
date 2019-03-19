-- 打开myemployees库
	USE myemployees;

-- 1.查询表中的单个字段
	select last_name from employees;

-- 2.查询表中的多个字段
	select last_name,salary,email from employees;

-- 3.查询表中的所有字段

	-- 第一种方法,顺序跟原表的顺序是一样的
	select * from employees;

	-- 第二种方法，麻烦，需要一个一个去写，但是顺序可以自己定,
	select
    `employee_id`,
    `first_name`,
    `last_name`,
    `phone_number`,
    `last_name`,
    `job_id`,
    `phone_number`,
    `job_id`,
    `salary`,
    `commission_pct`,
    `manager_id`,
    `department_id`,
    `hiredate`
	FROM employees;

-- 细节补充，着重号，1旁边的` `,给列名加上，给关键字加，着重说明，可去掉,如下
	select `NAME` FROM employees;

-- 4.查询常量值
	select 100;
	select 'john';

-- 5.查询表达式
	select 100 * 98;

-- 6.查询函数
	select VERSION();


