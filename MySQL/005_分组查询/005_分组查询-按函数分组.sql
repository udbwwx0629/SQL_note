-- �����ʽ��������

-- ����:��Ա�������ĳ��ȷ��飬��ѯÿһ���Ա��������ɸѡԱ������>5������Щ
-- �� ��ѯÿ�����ȵ�Ա�˸���
select count(*),length(last_name) len_name from employees group by length(last_name);
-- �� ���ɸѡ����
select count(*) c,length(last_name) len_name from employees group by len_name having c>5
