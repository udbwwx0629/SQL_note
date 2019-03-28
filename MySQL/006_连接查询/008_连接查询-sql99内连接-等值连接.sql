-- 1、等值连接

-- 案例1.查询员工名、部门名
select last_name,department_name
from departments d
 join  employees e
on e.`department_id` = d.`department_id`;
-- 案例2.查询名字中包含e的员工名和工种名（添加筛选）
select last_name,job_title
from employees e
inner join jobs j
on e.`job_id`=  j.`job_id`
WHERE e.`last_name` LIKE '%e%';
-- 3. 查询部门个数>3的城市名和部门个数，（添加分组+筛选）
-- ①查询每个城市的部门个数
-- ②在①结果上筛选满足条件的
select city,count(*) 部门个数
from departments d
inner join locations l
on d.`location_id`=l.`location_id`
GROUP BY city
HAVING COUNT(*)>3;

-- 案例4.查询哪个部门的员工个数>3的部门名和员工个数，并按个数降序（添加排序）
-- ①查询每个部门的员工个数
select count(*),department_name
from employees e
inner join departments d
on e.`department_id`=d.`department_id`
GROUP BY department_name
-- ② 在①结果上筛选员工个数>3的记录，并排序
select count(*) 个数,department_name
from employees e
inner join departments d
on e.`department_id`=d.`department_id`
GROUP BY department_name
HAVING COUNT(*)>3
ORDER BY COUNT(*) DESC;
-- 5.查询员工名、部门名、工种名，并按部门名降序（添加三表连接）
select last_name,department_name,job_title
from employees e
inner join departments d on e.`department_id`=d.`department_id`
INNER JOIN jobs j ON e.`job_id` = j.`job_id`
ORDER BY department_name DESC;
