-- 分组后筛选

-- 案例1：查询哪个部门的员工个数>5
-- ①查询每个部门员工个数
select count(*),department_id from employees group by department_id;
-- ②筛选刚才①的结果,查询哪个部门的员工个数>5
select count(*),department_id from employees group by department_id having count(*)>5;

-- 案例2：每个工种有奖金的员工的最高工资>12000的工种编号和最高工资
-- ① 查询每个工种有资金的员工的最高工资
select max(salary),job_id from employees where commission_pct is not null group by job_id;
-- ② 根据①的结果继续筛选，最高工资>12000
select job_id,max(salary) from employees where commission_pct is not null group by job_id having max(salary)>12000;

-- 案例3:查询领导编号>102的每个领导手下的最低工资>5000的领导编号是哪个，以及其最低工资
-- ① 查询领导编号>102的每个领导手下的员工固定最低工资
select min(salary),manager_id from employees group by manger_id
-- ② 添加筛选条件:编号>102
select min(salary),manager_id from employees where manager_id group by manager_id;
-- ③ 添加筛选条件：最低工资>5000
select min(salary),manager_id from employees where manager_id group by manager_id having min(salary)>5000;

