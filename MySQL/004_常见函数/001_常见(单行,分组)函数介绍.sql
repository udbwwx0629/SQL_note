/*
概念：类似于java的方法，将一组逻辑语句封装在方法体中，对外暴露方法名
好处：1、隐藏了实现细节  2、提高代码的重用性
调用：select 函数名(实参列表) 【from 表】;
特点：
	①叫什么（函数名）
	②干什么（函数功能）
分类：
	1、单行函数
	如 concat、length、ifnull等
	2、分组函数
	功能：做统计使用，又称为统计函数、聚合函数、组函数

常见函数:
一、单行函数
 字符函数：
 length:获取字节个数(utf-8一个汉字代表3个字节,gbk为2个字节)
 concat
 substr
 instr
 trim
 upper
 lower
 lpad
 rpad
 replace
 数学函数：
 round
 ceil
 floor
 truncate
 mod
 日期函数：
 now
 curdate
 curtime
 year
 month
 monthname
 day
 hour
 minute
 second
 str_to_date
 date_format
 其他函数：
 version
 database
 user
 控制函数:
 if
 case
*/

-- 二、分组函数
/*
功能：用作统计使用，又称为聚合函数或统计函数或组函数
分类：
sum 求和、avg 平均值、max 最大值 、min 最小值 、count 计算个数
特点：
1、sum、avg一般用于处理数值型
                max、min、count可以处理任何类型
2、以上分组函数都忽略null值
3、可以和distinct搭配实现去重的运算
4、count函数的单独介绍
      一般使用count(*)用作统计行数
5、和分组函数一同查询的字段要求是group by后的字段
*/


