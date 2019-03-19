-- 1.查询员工的姓名和部门号和年薪，按年薪降序 按姓名升序

select last_name,department_id,salary*12*(1+IFNULL(commission_pct,0)) 年薪
from employees
order by 年薪 desc,last_name asc;

-- 2.选择工资不在8000到17000的员工的姓名和工资，按工资降序
select last_name,salary
from employees
where salary not between 8000 and 17000
order by salary desc;

-- 3.查询邮箱中包含e的员工信息，并先按邮箱的字节数降序，再按部门号升序

select *,length(email)
from employees
where email like '%e%'
order by length(email) desc,department_id asc;
