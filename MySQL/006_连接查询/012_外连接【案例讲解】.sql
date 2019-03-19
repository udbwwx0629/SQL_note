
-- 一、查询编号>3的女神的男朋友信息，如果有则列出详细，如果没有，用null填充

select b.id,b.name,bo.*
from beauty b
left outer join boys bo
on b.`boyfriend_id` = bo.`id`
WHERE b.`id`>3;

-- 二、查询哪个城市没有部门
select city
from departments d
right outer join locations l
on d.`location_id`=l.`location_id`
WHERE  d.`department_id` IS NULL;

-- 三、查询部门名为SAL或IT的员工信息
-- 方法一
select e.*,d.department_name,d.`department_id`
FROM departments  d
LEFT JOIN employees e
ON d.`department_id` = e.`department_id`
where d.`department_name` IN('SAL','IT');

-- 方法二
select * from departments
where `department_name` IN('SAL','IT');
