-- 简单的分组查询：
案例1:查询每个工种的最高工资
select max(salary),job_id from employees group by job_id;

案例:查询每个位置上的部门个数
select count(*),location_id from departments group by location_id;
