-- ����ģ����ѯ
/*
like  һ���ͨ�������ʹ��
	ͨ�����
	      % �������ַ�,����0���ַ�
	      _ ���ⵥ���ַ�
between and
	��ʹ��between and ����������ļ���
	�ڰ����ٽ�ֵ
	�������ٽ�ֵ��Ҫ����˳��
in
	���壺�ж�ĳ�ֶε�ֵ�Ƿ�����in�б��е�ĳһ��
	�ص㣺
		��ʹ��in���������
		��in�б��ֵ���ͱ���һ�»����
		��in�б��в�֧��ͨ���
is null | is not null
	=��<>���������ж�nullֵ
	is null��is not null �����ж�nullֵ
*/

-- 1.like
    --  ����1����ѯԱ�����а����ַ�a��Ա����Ϣ
    select * from employees where last_name like '%a%';
    --  ����2����ѯԱ�����е������ַ�Ϊe��������ַ�Ϊa��Ա�����͹���
    select last_name,salary from employees where last_name like '__n_l%';
    -- ����3����ѯԱ�����еڶ����ַ�Ϊ_��Ա����

-- ����1.����ͨ���ǰֱ�ӿɼ�\��ת�壬����Ϊ�����_������ǰ�����\
select last_name from employees where last_name like '_\_%';

-- ����2.ͨ����escape '?',?��������һ������
select last_name from employees where last_name like '_$_%' escape '$';
