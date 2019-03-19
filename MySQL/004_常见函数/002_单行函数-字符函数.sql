-- 1.length 获取参数值的字节个数
select length('john');
select length('张三丰hahaha');
SHOW VARIABLES LIKE '%char%'

-- 2.concat 拼接字符串
select concat(last_name,'_',first_name) 姓名 from employees;

-- 3.upper、lower
select upper('john');
select lower('joHn');
-- 示例：将姓变大写，名变小写，然后拼接
select concat(upper(last_name),lower(first_name))  姓名 from employees;

-- 4.substr、substring
注意：索引从1开始
-- 截取从指定索引处后面所有字符
select substr('李莫愁爱上了陆展元',7)  out_put;

-- 截取从指定索引处指定字符长度的字符
select substr('李莫愁爱上了陆展元',1,3) out_put;

-- 案例：姓名中首字符大写，其他字符小写然后用_拼接，显示出来
select concat(upper(substr(last_name,1,1)),'_',lower(substr(last_name,2)))  out_put
from employees;

-- 5.instr 返回子串第一次出现的索引，如果找不到返回0
select instr('杨不殷六侠悔爱上了殷六侠','殷八侠') as out_put;

-- 6.trim
select length(trim('    张翠山    ')) as out_put;
select trim('aa' from 'aaaaaaaaa张aaaaaaaaaaaa翠山aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')  as out_put;

-- 7.lpad 用指定的字符实现左填充指定长度
select lpad('殷素素',2,'*') as out_put;

-- 8.rpad 用指定的字符实现右填充指定长度
select rpad('殷素素',12,'ab') as out_put;

-- 9.replace 替换
select replace('周芷若周芷若周芷若周芷若张无忌爱上了周芷若','周芷若','赵敏') as out_put;
