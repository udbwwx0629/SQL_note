-- 2.BETWEEN AND
/*
      ①.使用between and 可以提高语言的简洁度
      ②.包含临界值(就是>=100,<=120),包含了了100与120，
      ③.两个临界值不要调换顺序
*/

-- 案例1：查询员工编号在100到120之间的员工信息
    -- 繁琐
    select * from employees where employee_id >=100 and employee_id <=120;
    -- 简洁(推荐)
    select * from employees where employee_id between 100 and 120;
