-- 三、模糊查询
/*
like  一般和通配符搭配使用
	通配符：
	      % 任意多个字符,包含0个字符
	      _ 任意单个字符
between and
	①使用between and 可以提高语句的简洁度
	②包含临界值
	③两个临界值不要调换顺序
in
	含义：判断某字段的值是否属于in列表中的某一项
	特点：
		①使用in提高语句简洁度
		②in列表的值类型必须一致或兼容
		③in列表中不支持通配符
is null | is not null
	=或<>不能用于判断null值
	is null或is not null 可以判断null值
*/

-- 1.like
    --  案例1：查询员工名中包含字符a的员工信息
    select * from employees where last_name like '%a%';
    --  案例2：查询员工名中第三个字符为e，第五个字符为a的员工名和工资
    select last_name,salary from employees where last_name like '__n_l%';
    -- 案例3：查询员工名中第二个字符为_的员工名

-- 方法1.特殊通配符前直接可加\可转义，以下为了输出_，所以前面加上\
select last_name from employees where last_name like '_\_%';

-- 方法2.通过加escape '?',?可以任意一个代码
select last_name from employees where last_name like '_$_%' escape '$';
