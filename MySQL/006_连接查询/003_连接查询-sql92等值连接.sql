-- 一、sq192标准

-- 1.等值连接
/*
①多表等值连接的结果为多表的交集部分
②n表连接至少需要n-1个连接条件
③多表的顺序没有要求
④一般需要为表起别名
⑤可以搭配前面介绍所有子句使用，比如排序，分组，筛选
*/

-- 案例1:查询女神名和对应的男神名
select NAME,boysName from beauty,boys where beauty.boyfriend_id=boys.id;
-- 案例2:查询员工名和对应的部门名
select last_name,department_name from employees , departments where employees.department_id = departments.department_id;

-- 2.为表名起别名
/*
①提高语句的简洁度
②区分多个重名的字段
*/
-- 案例:查询员工名，工种号，工种名
select e.last_name,job_id,job_title from employees e,jobs j where e.job_id=j.job_id;

