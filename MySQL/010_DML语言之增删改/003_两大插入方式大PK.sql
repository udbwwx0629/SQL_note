-- ����ʽ��PK ��

1.��ʽһ,֧�ֲ������,��ʽ����֧��
insert into beauty values(23,'�����1','Ů','1990-03-24','1388888888',null,2),
(24,'�����2','Ů','1990-03-24','1388888888',NULL,2),
(25,'�����3','Ů','1990-03-24','1388888888',NULL,2);

2.��ʽһ,֧���Ӳ�ѯ,��ʽ����֧��
insert into beauty(id,NAME,phone) select 26,'����','13888888';

insert into beauty(id,NAME,phone) select id,boyname,'11809866' from boys where id<3;
