-- 迪卡尔乘积
/*
含义:又称多表查询,当查询的字段来自于多个表时,就会用到连接查询
笛卡尔乘积现象:表1 有m行,表2有n行,结果=m*n行
发生原因:没有有效的连接条件
如何避免:添加有效的连接条件
*/
select * from beauty;
select * from boys;
select NAME,boyName from beauty,boys
where  beauty.boyfriend_id=boys.id;
