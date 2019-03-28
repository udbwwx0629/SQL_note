/*
语法：
	SELECT  查询列表  FROM  表名  WHERE  筛选条件;
分类：
	一、按条件表达式筛选
		简单条件运算符：>  <  =  <>  >=  <=

    二、按逻辑表达式筛选
		逻辑运算符：(作用：用于连接条件表达式)
						&&       ||       !
						AND  OR  NOT
	&&和and：两个条件都为true，结果为true，反之为false
	||或or： 只要有一个条件为true，结果为true，反之为false
	!或not： 如果连接的条件本身为false，结果为true，反之为false

    三、模糊查询
        LIKE  一般搭配通配符使用，可以判断字符型或数值型
	    通配符:
			    % 任意多个字符,包含0个字符
			    _ 任意单个字符
        BETWEEN AND
        in
        is null
        is not null/<=>
*/
