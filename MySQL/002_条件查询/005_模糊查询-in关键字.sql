-- 3.in
/*
���壺�ж�ĳ�ֶε�ֵ�Ƿ�����in�б��е�ĳһ��()
�ص㣺
	��ʹ��in���������
	��in�б��ֵ���ͱ���һ�»����
	��in�б��в�֧��ͨ���
*/

-- ��������ѯԱ���Ĺ��ֱ����IT_PROG��AD_VP��AD_PRES�е�һ��Ա�����͹��ֱ��
    -- ����
    select last_name,job_id from employees where job_id ='IT_PROG' or job_id ='AD_VP' or job_id ='AD_PRES';
    -- ��ࣨ�Ƽ���
    select last_name,job_id from employees where job_id in('IT_PROG','AD_VP','AD_PRES');

