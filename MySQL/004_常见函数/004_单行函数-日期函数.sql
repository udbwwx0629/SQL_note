-- now 返回当前系统日期+时间
select NOW();

-- curdate 返回当前系统日期，不包含时间
select CURDATE();

-- curtime 返回当前时间，不包含日期
select CURTIME();

-- 可以获取指定的部分，年、月、日、小时、分钟、秒
select YEAR(NOW()) 年;
select YEAR('1998-1-1') 年;
select  YEAR(hiredate) 年 from employees;
select MONTH(NOW()) 月;
select MONTHNAME(NOW()) 月;

-- str_to_date 将字符通过指定的格式转换成日期
select STR_TO_DATE('1998-3-2','%Y-%c-%d') as out_put;

-- 查询入职日期为1992--4-3的员工信息
-- 方法1:
select * from employees where hiredate = '1992-4-3';
-- 方法2:
select * from employees where hiredate = STR_TO_DATE('4-3 1992','%c-%d %Y');

-- date_format 将日期转换成字符
select DATE_FORMAT(NOW(),'%y年%m月%d日') as out_put;

-- 查询有奖金的员工名和入职日期(xx月/xx日 xx年)
select last_name,DATE_FORMAT(hiredate,'%m月/%d日 %y年') 入职日期
from employees
where commission_pct is not null;
