-- 案例:查询员工的工资和工资级别,显示等级A的工资
select salary,grade_level from employees e,job_grade g where salary between g.lowest_sal and higest_sal and g.grade_level ='A';
