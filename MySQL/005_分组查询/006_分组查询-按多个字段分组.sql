-- 按多个字段分组
-- 案例:查询每个部门每个工种的员工的平均工资
select avg(salary),department_id,job_id from employees group by department_id,job_id;

