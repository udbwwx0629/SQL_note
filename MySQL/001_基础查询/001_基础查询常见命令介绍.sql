/*
һ���﷨����
select ��ѯ�б� FROM ����;

�����ص�
1����ѯ�б�������ֶΡ����������ʽ��������Ҳ�����Ƕ��
2����ѯ�����һ�������

����ʾ��

1����ѯ�����ֶ�
select �ֶ��� from ����;

2����ѯ����ֶ�
select �ֶ������ֶ��� from ����;

3����ѯ�����ֶ�
select * from ����

4����ѯ����
select ����ֵ;
ע�⣺�ַ��ͺ������͵ĳ���ֵ�����õ���������������ֵ�Ͳ���Ҫ

5����ѯ����
select ������(ʵ���б�);

6����ѯ���ʽ
select 100/1234;

7�������
��as
�ڿո�

8��ȥ��
select distinct �ֶ��� from ����;

9��+
���ã����ӷ�����
select ��ֵ+��ֵ; ֱ������
select �ַ�+��ֵ;����ͼ���ַ�ת������ֵ�����ת���ɹ�����������㣻����ת����0����������
select null+ֵ;�����Ϊnull

10�������䡿concat����
���ܣ�ƴ���ַ�
select concat(�ַ�1���ַ�2���ַ�3,...);

11�������䡿ifnull����
���ܣ��ж�ĳ�ֶλ���ʽ�Ƿ�Ϊnull�����Ϊnull ����ָ����ֵ�����򷵻�ԭ����ֵ
select ifnull(commission_pct,0) from employees;

12�������䡿isnull����
���ܣ��ж�ĳ�ֶλ���ʽ�Ƿ�Ϊnull������ǣ�����1�����򷵻�0
*/

-- 1���鿴��ǰ�������ݿ�
SHOW DATABASES;

-- 2����ָ���Ŀ�*
USE myemployees;

--  3���鿴��ǰ������б�
SHOW TABLES;

--  4���鿴������(ָ��mysql)�����б�
SHOW TABLES FROM mysql;

/*
--  5����myemployees���ݿ��д���stuinfo��
	create table ���� (
		���� ������,
		���� ������
*/
create TABLE stuinfo (id INT, NAME VARCHAR(20));

-- 6.�鿴��ṹ*/
desc departments;

-- 7.�鿴�������İ汾
select version();
