-- FROM后面

-- 案例1：查询每个部门的平均工资的工资等级
-- ①.查询每个部门的平均工资
select avg(salary),department_id from employees group by department_id ;
-- ②.查询工资等级信息
/*
创建job_grades表
 CREATE TABLE job_grades
           (grade_level VARCHAR(3),
           lowest_sal  int,
           highest_sal int);
INSERT INTO job_grades
VALUES ('A', 1000, 2999);
INSERT INTO job_grades
VALUES ('B', 3000, 5999);
INSERT INTO job_grades
VALUES('C', 6000, 9999);
INSERT INTO job_grades
VALUES('D', 10000, 14999);
INSERT INTO job_grades
VALUES('E', 15000, 24999);
INSERT INTO job_grades
VALUES('F', 25000, 40000);
*/
select * from job_grades;
-- ③.连接①的结果集和job_grades表,筛选条件平均工资between lowset_sal and highest_sal
select ag_dep.*,g.grade_level
from (
     select avg(salary) ag,department_id
     from employees e
     group by department_id) ag_dep
inner join job_grades g
on ag_dep.ag
between lowest_sal and highest_sal;
