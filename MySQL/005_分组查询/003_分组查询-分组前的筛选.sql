-- ʵ�ַ���ǰ��ɸѡ
-- ����1:��ѯ�����а���a�ַ���ÿ�����ŵ���߹���
select max(salary),department_id from employees where email like '%a%' group by department_id;

-- ����2:��ѯ�н����ÿ���쵼����Ա����ƽ������
select avg(salary),manager_id from employees where commission_pct is not null group by manager_id;
