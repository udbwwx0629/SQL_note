-- 二、修改语句
/*
1.修改单表的记录
语法：
update 表名
set 列=新值,列=新值,.....
where 筛选条件;

2.修改多表的记录【补充】
*/

-- 1.修改单表的记录
-- 案例1：修改beauty表中姓唐的女神的电话为13899888899
update beauty set phone='13899888899' where NAME like '唐%';

-- 2.修改boys表中id号为2的名称为张飞，魅力值10
update boys set boyname='张飞',user=10 WHERE id=2;
