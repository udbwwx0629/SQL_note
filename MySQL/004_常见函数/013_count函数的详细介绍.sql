-- 5、count函数的详细介绍
select count(salary) from employees;
select count() from employees;
select count(1) from employees;

效率：
MYISAM存储引擎下  ，COUNT()的效率高
INNODB存储引擎下，COUNT()和COUNT(1)的效率差不多，比COUNT(字段)要高一
