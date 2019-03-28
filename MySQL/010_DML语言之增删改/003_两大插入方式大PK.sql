-- 两大方式大PK ★

1.方式一,支持插入多行,方式二不支持
insert into beauty values(23,'唐艺昕1','女','1990-03-24','1388888888',null,2),
(24,'唐艺昕2','女','1990-03-24','1388888888',NULL,2),
(25,'唐艺昕3','女','1990-03-24','1388888888',NULL,2);

2.方式一,支持子查询,方式二不支持
insert into beauty(id,NAME,phone) select 26,'宋茜','13888888';

insert into beauty(id,NAME,phone) select id,boyname,'11809866' from boys where id<3;
