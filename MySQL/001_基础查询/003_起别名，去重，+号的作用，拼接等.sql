-- 7.�����
/*
 �ٱ������
 �����Ҫ��ѯ���ֶ��������������ʹ�ñ����������ֿ���
*/
	-- ��ʽһ:ʹ��AS
	select 100%98 AS ���;
	select last_name as ��,first_name as �� from employees;

	-- ��ʽ��:ʹ�ÿո�
	select last_name ����,first_name �� from employees;

	-- ����:��ѯsalary,��ʾ���Ϊout put
	select salary as "out put" from employees;

-- 8.ȥ��(DISTINCT)

	-- ����:��ѯԱ�������漰�������еĲ��ű��
	select distinct department_id from employees;

-- 9��+�ŵ�����
/*
	java�е�+�ţ�
	���������������������Ϊ��ֵ��
	�����ӷ���ֻҪ��һ��������Ϊ�ַ���

	��mysql�е�+�ţ�
	     ����ֻ��һ�����ܣ������
	     ����
	     SELECT 90+100;      ������������Ϊ��ֵ�ͣ������ӷ�����
	     SELECT '123'+77;    ����һ�����ַ��ͣ���ͼ���ַ�����ֵת������ֵ��,���ת���ɹ�����������ӷ�����
	     SELECT 'john'+ 100; ���ת��ʧ�ܣ����ַ�����ֵת����0
	     SELECT null +10;      �������һ��Ϊnull������һ��Ϊnull
*/

-- 10�������䡿ƴ�� CONCAT(str1,str2,...)
	-- ��������ѯԱ�����������ӳ�һ���ֶΣ�����ʾΪ����
    select concat(last_name,first_name) as ���� from employees;
    select concat('a','b','c') as ���;

-- 11�������䡿ifnull����
	-- ���ܣ��ж�ĳ�ֶλ���ʽ�Ƿ�Ϊnull,���Ϊnull����ָ����ֵ�����򷵻�ԭ����ֵ
	-- ������
	select IFNULL(commission_pct,0) from employees;

-- 12�������䡿isnull����
	-- �ж�ĳ�ֶλ���ʽ�Ƿ�Ϊnull,����ǣ��򷵻�1�����򷵻�0
	-- ������
	select commission_pct,ISNULL(commission_pct) ����ֵ from employees;





