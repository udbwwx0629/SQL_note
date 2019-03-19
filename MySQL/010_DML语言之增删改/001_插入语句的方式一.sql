-- DML语言
-- 方式一:经典的插入
/*
数据操作语言:
插入: insert
修改: update
删除: delete
*/

-- 一.插入语句
/*
语法:
insert into 表名(列名,....) values(值,.....);
*/
select * from beauty;

-- 1.插入的值的类型要与列的类型一致或兼容
insert into beauty(id,NAME,sex,borndate,phone,photo,boyfriend_id)
values(13,'唐艺昕','女','1990-4-23','1898888888',null,2);

-- 2.不可以为null的列必须插入值。可以为null的列如何插入值？(null值必须写null值,不能不写)
-- 方式一：
insert into beauty(id,NAME,sex,borndate,phone,photo,boyfriend_id)
values(13,'唐艺昕','女','1990-4-23','1898888888',null,2);
-- 方式二：
insert into beauty(id,NAME,sex,phone)
values(15,'娜扎','女','1388888888');

-- 3.列的顺序是否可以调换 (可以调换列的顺序,但调换后的值必须相对应)
insert into beauty(NAME,sex,id,phone)
values('蒋欣','女',16,'110');

-- 4.列数和值的个数必须一致 (只有boyfriend_id,但少了个相对应的值,报错)
insert into beauty(NAME,sex,id,phone,boyfriend_id)
values('关晓彤','女',17,'110');

-- 5.可以省略列名,默认所有列,而且列的顺序和表中列的顺序一致
insert into beauty
values(18,'张飞','男',null,'119',null,null);
