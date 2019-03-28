/*
2.修改多表的记录【补充】
语法：
sql92语法：
update 表1 别名,表2 别名
set 列=值,....
where 连接条件
and 筛选条件;

sql99语法：
update 表1 别名
inner | left | right | join 表2 别名
on 连接条件
set 列=值,......
where 筛选条件
*/

-- 2.修改多表的记录
-- 案例1：修改张无忌的女手机号为114
update boys bo INNER JOIN beauty b ON bo.id=b.boyfriend_id SET b.phone ='114' where bo.boyName='张无忌';

-- 案例2：修改没有男朋友的女神的男朋友编号都为2号
update boys bo RIGHT JOIN beauty b ON bo.id =b.boyfriend_id SET b.boyfriend_id =2 where bo.id is null;
