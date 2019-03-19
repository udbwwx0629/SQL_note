-- SELECT后面  /* 仅仅支持标量子查询 */
-- 案例1:查询每个部门的员工个数
select d.*,(
                select count(*)
                from employees e
                where e.department_id =d.department_id) 个数
from departments d;
-- 案例2:查询员工号=102的部门名,子查询中使用内连接,方法可以,多此一举
select (
               select department_name
               from departments d
               inner join employees e
               on d.department_id=e.department_id
               where e.employee_id=102) 部门名 ;
-- 或  直接使用内连接(不推荐)
select department_name 部门名 
from departments d
inner join employees e
on d.department_id =e.department_id
where e.employee_id=102;
