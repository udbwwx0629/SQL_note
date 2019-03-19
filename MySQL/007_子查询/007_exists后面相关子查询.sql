-- 四、exists后面（相关子查询）

/*
语法：
exists(完整的查询语句)
结果：
1或0
*/

select EXISTS(
                select employee_id
              from employees
              where salary=300000);

-- 案例1:查询有员工的部门名

-- in
select department_name
from departments d
where d.`department_id` IN(
select department_id
from employees  );

-- exists
select department_name
from departments d
where exists(
	select *
	from employees e
	where d.`department_id`=e.`department_id`
);

-- 查询没有女朋友的男神信息

-- in
 select bo.*
 from boys bo
 where bo.id not in (
 	select boyfriend_id
 	from beauty);

 -- exists
 select bo.*
 from boys bo
 where not exists(
 	select boyfriend_id
 	from beauty b
 	where bo.id = b.boyfriend_id
 );
