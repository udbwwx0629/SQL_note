-- DML����
-- ��ʽһ:����Ĳ���
/*
���ݲ�������:
����: insert
�޸�: update
ɾ��: delete
*/

-- һ.�������
/*
�﷨:
insert into ����(����,....) values(ֵ,.....);
*/
select * from beauty;

-- 1.�����ֵ������Ҫ���е�����һ�»����
insert into beauty(id,NAME,sex,borndate,phone,photo,boyfriend_id)
values(13,'�����','Ů','1990-4-23','1898888888',null,2);

-- 2.������Ϊnull���б������ֵ������Ϊnull������β���ֵ��(nullֵ����дnullֵ,���ܲ�д)
-- ��ʽһ��
insert into beauty(id,NAME,sex,borndate,phone,photo,boyfriend_id)
values(13,'�����','Ů','1990-4-23','1898888888',null,2);
-- ��ʽ����
insert into beauty(id,NAME,sex,phone)
values(15,'����','Ů','1388888888');

-- 3.�е�˳���Ƿ���Ե��� (���Ե����е�˳��,���������ֵ�������Ӧ)
insert into beauty(NAME,sex,id,phone)
values('����','Ů',16,'110');

-- 4.������ֵ�ĸ�������һ�� (ֻ��boyfriend_id,�����˸����Ӧ��ֵ,����)
insert into beauty(NAME,sex,id,phone,boyfriend_id)
values('����ͮ','Ů',17,'110');

-- 5.����ʡ������,Ĭ��������,�����е�˳��ͱ����е�˳��һ��
insert into beauty
values(18,'�ŷ�','��',null,'119',null,null);
