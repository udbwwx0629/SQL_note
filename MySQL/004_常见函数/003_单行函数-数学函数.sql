-- round 四舍五入

-- 后面无参数,则直接四舍五入取整
select round(-1.55);
-- 后面有参数,多少位四舍五入多少位
select round(1.567,2);

-- ceil 向上取整,返回>=该参数的最小整数
select ceil(-1.02);

-- floor 向下取整，返回<=该参数的最大整数
select floor(-9.99);

-- truncate 截断(截断小数点后的第几位)
select truncate(1.69999,1);

-- mod取余
/*
mod(a,b) ：  a-a/b*b
mod(-10,-3):-10- (-10)/(-3)*（-3）=-1
*/
select mod(10,-3);
select 10%3;
