-- 3.in
/*
含义：判断某字段的值是否属于in列表中的某一项()
特点：
	①使用in提高语句简洁度
	②in列表的值类型必须一致或兼容
	③in列表中不支持通配符
*/

-- 案例：查询员工的工种编号是IT_PROG、AD_VP、AD_PRES中的一个员工名和工种编号
    -- 繁琐
    select last_name,job_id from employees where job_id ='IT_PROG' or job_id ='AD_VP' or job_id ='AD_PRES';
    -- 简洁（推荐）
    select last_name,job_id from employees where job_id in('IT_PROG','AD_VP','AD_PRES');

