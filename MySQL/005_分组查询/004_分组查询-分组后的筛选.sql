-- �����ɸѡ

-- ����1����ѯ�ĸ����ŵ�Ա������>5
-- �ٲ�ѯÿ������Ա������
select count(*),department_id from employees group by department_id;
-- ��ɸѡ�ղŢٵĽ��,��ѯ�ĸ����ŵ�Ա������>5
select count(*),department_id from employees group by department_id having count(*)>5;

-- ����2��ÿ�������н����Ա������߹���>12000�Ĺ��ֱ�ź���߹���
-- �� ��ѯÿ���������ʽ��Ա������߹���
select max(salary),job_id from employees where commission_pct is not null group by job_id;
-- �� ���ݢٵĽ������ɸѡ����߹���>12000
select job_id,max(salary) from employees where commission_pct is not null group by job_id having max(salary)>12000;

-- ����3:��ѯ�쵼���>102��ÿ���쵼���µ���͹���>5000���쵼������ĸ����Լ�����͹���
-- �� ��ѯ�쵼���>102��ÿ���쵼���µ�Ա���̶���͹���
select min(salary),manager_id from employees group by manger_id
-- �� ���ɸѡ����:���>102
select min(salary),manager_id from employees where manager_id group by manager_id;
-- �� ���ɸѡ��������͹���>5000
select min(salary),manager_id from employees where manager_id group by manager_id having min(salary)>5000;

