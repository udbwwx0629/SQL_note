-- 一、按条件表达式筛选

    -- 案例1：查询工资>12000的员工信息
    select  * from employees where salary>12000;
    -- 案例2：查询部门编号不等于90号的员工名和部门编号
    select last_name,department_id from employees where department_id <>90;

-- 二、按逻辑表达式筛选
    -- 案例1：查询工资在10000到20000之间的员工名、工资以及奖金
    select concat(last_name,'+',first_name) 姓名,salary 工资,ifnull(commission_pct,0) 奖金率 from employees where salary>=10000 and salary<=20000;
    -- 案例2：查询部门编号不是在90到110之间的，或者工资高于15000的员工信息

-- 第一种写法
select * from employees where department_id<90 or department_id>110 or salary>15000;
-- 第二种写法
select * from employees where not(department_id>=90 and department_id<=110) or salary>15000;