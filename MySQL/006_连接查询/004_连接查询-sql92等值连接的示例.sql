-- 1.两个表的顺序是否可以调换(可以)
select e.last_name,e.job_id,j.job_title from jobs j,employees e where e.job_id=j.job_id;
-- 2.可以加筛选(可以)
-- 案例:查询有奖金的员工名部门名
select last_name,department_name from employees e ,departments d where e.department_id=d.department_id and commission_pct is not null;
-- 案例2:查询城市中第二个字符为0的部门名和城市名
select department_name,city from departments d ,location l where d.location_id=l.location_id and city like '_o%';
-- 3:可以加分组(可以)
-- 案例1:查询每个城市的部门个数
select count(*) 个数 ,city from departments d, location l where d.location_id=l.location_id group by city;
-- 案例2:查询有奖金的每个部门部门名领导编号和该部门最低工资
select department_name d,manager_id  from departments d,employees e  where d.department_id=e.department_id and commission_pct is not null group by  department_name,d.manager_id;
-- 4.可以加排序
-- 案例:查询每个工种名和员工个数，并且按员工个数降序
select job_title,count(*) from employees e,jobs j where e.job_id=j.job_id group by job_title order by count(*) desc;
-- 5.可以实现三表连接
-- 案例:查询员工名，部门名和所在的城市
select last_name, department_name,city from employees e,departments d,location l where e.department_id=d.department_id and d.location_id =l.location_id and city like 's%' order BYdepartment_name DESC;
