-- 7.起别名
/*
 ①便于理解
 ②如果要查询的字段有重名的情况，使用别名可以区分开来
*/
	-- 方式一:使用AS
	select 100%98 AS 结果;
	select last_name as 姓,first_name as 名 from employees;

	-- 方式二:使用空格
	select last_name 姓名,first_name 名 from employees;

	-- 案例:查询salary,显示结果为out put
	select salary as "out put" from employees;

-- 8.去重(DISTINCT)

	-- 案例:查询员工表中涉及到的所有的部门编号
	select distinct department_id from employees;

-- 9、+号的作用
/*
	java中的+号：
	①运算符，两个操作数都为数值型
	②连接符，只要有一个操作数为字符串

	在mysql中的+号：
	     仅仅只有一个功能：运算符
	     例：
	     SELECT 90+100;      两个操作符都为数值型，则做加法运算
	     SELECT '123'+77;    其中一个是字符型，试图将字符型数值转换成数值型,如果转换成功，则继续做加法运算
	     SELECT 'john'+ 100; 如果转换失败，则字符型数值转换成0
	     SELECT null +10;      如果其中一方为null，则结果一定为null
*/

-- 10、【补充】拼接 CONCAT(str1,str2,...)
	-- 案例：查询员工名和姓连接成一个字段，并显示为姓名
    select concat(last_name,first_name) as 姓名 from employees;
    select concat('a','b','c') as 结果;

-- 11、【补充】ifnull函数
	-- 功能：判断某字段或表达式是否为null,如果为null返回指定的值，否则返回原本的值
	-- 案例：
	select IFNULL(commission_pct,0) from employees;

-- 12、【补充】isnull函数
	-- 判断某字段或表达式是否为null,如果是，则返回1，否则返回0
	-- 案例：
	select commission_pct,ISNULL(commission_pct) 返回值 from employees;





