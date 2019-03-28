-- 按表达式或函数分组

-- 案例:按员工姓名的长度分组，查询每一组的员工个数，筛选员工个数>5的有哪些
-- ① 查询每个长度的员人个数
select count(*),length(last_name) len_name from employees group by length(last_name);
-- ② 添加筛选条件
select count(*) c,length(last_name) len_name from employees group by len_name having c>5
