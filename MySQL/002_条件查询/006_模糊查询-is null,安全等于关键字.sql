-- 4��is null
/*
=��<>���������ж�nullֵ
is null��is not null �����ж�nullֵ
*/

-- ����1����ѯû�н����Ա�����ͽ�����
select last_name,commission_pct from employees where commission_pct is null;
-- ����2����ѯ�н����Ա�����ͽ�����
select last_name,commission_pct from employees where commission_pct is not null;
-- ����3����ѯ����Ϊ12000��Ա�����ͽ�����(ֻ��ѯ��������12000��last_name,commission_pct�������ʰ�����nullֵ)
select last_name,commission_pct from employees where salary=12000;

-- 5.��ȫ����  <=>
-- ����1����ѯû�н����Ա�����ͽ�����(<=>�ɶ��Բ���)
select last_name,commission_pct from employees where commission_pct <=> NULL;
-- ����2����ѯ����Ϊ12000��Ա����Ϣ
select last_name,salary from employees where salary <=>12000;

-- 6.is null PK <=>

-- IS NULL:���������ж�NULLֵ���ɶ��Խϸߣ�����ʹ��
-- <=> :�ȿ����ж�NULLֵ���ֿ����ж���ͨ����ֵ���ɶ��Խϵ�
