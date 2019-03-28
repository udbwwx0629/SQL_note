-- 4、和distinct搭配
select sum(distinct salary),sum(salary) from employees;
select count(distinct salary),count(salary) from employees;
