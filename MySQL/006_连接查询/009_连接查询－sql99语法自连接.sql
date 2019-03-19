-- 查询员工的名字，上级的名字
select e.last_name, m.last_name  from employees e  join employees m on e.manager_id=m.employee_id;
-- 查询姓名中包含字符k的员工的名字，上级的名字
select  e.last_name,m.last_name from employees e join employees m on e.manager_id = m.employee_id where e.last_name like '%k%';
