/*
�﷨��
select ��ѯ�б�
from ����
��where  ɸѡ������
order by ������ֶλ���ʽ;

�ص㣺
1��asc   ����������򣬿���ʡ��
   desc  ������ǽ���
2��order by�Ӿ����֧�� �����ֶΡ����������ʽ������������ֶ�
3��order by�Ӿ��ڲ�ѯ������� �棬����limit�Ӿ�
*/

-- 1���������ֶ�����
select * from employees order by salary desc;

-- 2�����ɸѡ����������
-- ��������ѯ���ű��>=90��Ա����Ϣ������Ա����Ž���
select * from employees where department_id>=90 order by employee_id desc;

-- 3�������ʽ����
-- ��������ѯԱ����Ϣ ����н����
select *,salary*12*(1+IFNULL(commission_pct,0)) from employees order by salary*12*(1+IFNULL(commission_pct,0)) desc;

-- 4������������
-- ��������ѯԱ����Ϣ ����н����
select *,salary*12*(1+IFNULL(commission_pct,0)) ��н from employees order by ��н asc;

-- 5������������
-- ��������ѯԱ���������Ұ����ֵĳ��Ƚ���
select length(last_name),last_name from employees order by length(last_name) desc;

-- 6��������ֶ�����
-- ��������ѯԱ����Ϣ��Ҫ���Ȱ����ʽ����ٰ�employee_id����
select * from employees order by salary desc,employee_id asc;
