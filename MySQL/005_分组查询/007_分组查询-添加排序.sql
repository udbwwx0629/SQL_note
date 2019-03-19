-- 4.添加排序
-- 案例1：查询每个部门每个工种的员工的平均工资，并且按平均工资的高低显示
select avg(salary),job_id,department_id from employees group by job_id,department_id order by avg(salary) desc;
-- 案例2：每个工种有奖金的员工的最高工资>6000的工种编号和最高工资,按最高工资升序
select max(salary) m,job_id from employees where commission_pct is not null group by job_id having m>6000 order by m asc;

