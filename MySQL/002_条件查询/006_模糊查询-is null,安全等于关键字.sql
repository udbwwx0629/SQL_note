-- 4、is null
/*
=或<>不能用于判断null值
is null或is not null 可以判断null值
*/

-- 案例1：查询没有奖金的员工名和奖金率
select last_name,commission_pct from employees where commission_pct is null;
-- 案例2：查询有奖金的员工名和奖金率
select last_name,commission_pct from employees where commission_pct is not null;
-- 案例3：查询工资为12000的员工名和奖金率(只查询到工资在12000的last_name,commission_pct，奖金率包含了null值)
select last_name,commission_pct from employees where salary=12000;

-- 5.安全等于  <=>
-- 案例1：查询没有奖金的员工名和奖金率(<=>可读性不高)
select last_name,commission_pct from employees where commission_pct <=> NULL;
-- 案例2：查询工资为12000的员工信息
select last_name,salary from employees where salary <=>12000;

-- 6.is null PK <=>

-- IS NULL:仅仅可以判断NULL值，可读性较高，建议使用
-- <=> :既可以判断NULL值，又可以判断普通的数值，可读性较低
