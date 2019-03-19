/*
一、语法介绍
select 查询列表 FROM 表名;

二、特点
1、查询列表可以是字段、常量、表达式、函数，也可以是多个
2、查询结果是一个虚拟表

三、示例

1、查询单个字段
select 字段名 from 表名;

2、查询多个字段
select 字段名，字段名 from 表名;

3、查询所有字段
select * from 表名

4、查询常量
select 常量值;
注意：字符型和日期型的常量值必须用单引号引起来，数值型不需要

5、查询函数
select 函数名(实参列表);

6、查询表达式
select 100/1234;

7、起别名
①as
②空格

8、去重
select distinct 字段名 from 表名;

9、+
作用：做加法运算
select 数值+数值; 直接运算
select 字符+数值;先试图将字符转换成数值，如果转换成功，则继续运算；否则转换成0，再做运算
select null+值;结果都为null

10、【补充】concat函数
功能：拼接字符
select concat(字符1，字符2，字符3,...);

11、【补充】ifnull函数
功能：判断某字段或表达式是否为null，如果为null 返回指定的值，否则返回原本的值
select ifnull(commission_pct,0) from employees;

12、【补充】isnull函数
功能：判断某字段或表达式是否为null，如果是，返回1，否则返回0
*/

-- 1、查看当前所有数据库
SHOW DATABASES;

-- 2、打开指定的库*
USE myemployees;

--  3、查看当前库的所有表
SHOW TABLES;

--  4、查看其他库(指定mysql)的所有表
SHOW TABLES FROM mysql;

/*
--  5、在myemployees数据库中创建stuinfo表
	create table 表名 (
		列名 列类型,
		列名 列类型
*/
create TABLE stuinfo (id INT, NAME VARCHAR(20));

-- 6.查看表结构*/
desc departments;

-- 7.查看服务器的版本
select version();
