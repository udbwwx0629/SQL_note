 -- 左外连接(左边是主表,右边是从表)
/*
应用场景：用于查询一个表中有，另一个表没有的记录
特点：
1、	外连接的查询结果为主表中的所有记录
如果从表中有和它匹配的，则显示匹配的值
如果从表中没有和它匹配的，则显示null
外连接查询结果=内连接结果+主表中有而从表没有的记录
2、	左外连接，left join左边的是主表
       右外连接，right join右边的是主表
3、左外和右外交换两个表的顺序，可以实现同样的效果
4、全外连接=内连接的结果+表1中有但表2没有的+表2中有但表1没有的
*/

-- 引入1:查询没有男女朋友的女神名(左外连接:主表beauty,从表boy为从表)
select b.*,bo.* from beauty b left outer join boys bo on b,boyfriend_id=bo_id;

-- 案例1:查询哪个部门没有员工
-- 左外
select d.*,e.employee_id from departments d left outer join employees e on d.department_id = e.department_id where e.employee_id is null;
-- 右外
select d.*,e.employee_id from employees e right outer join departments d on d.department_id = e.department_id where e.employee_id is null;
-- 全外
use girls;
select b.*,bo.* from beauty b full outer join boys bo on b.boyfriend =bo.id;

