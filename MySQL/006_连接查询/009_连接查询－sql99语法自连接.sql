-- ��ѯԱ�������֣��ϼ�������
select e.last_name, m.last_name  from employees e  join employees m on e.manager_id=m.employee_id;
-- ��ѯ�����а����ַ�k��Ա�������֣��ϼ�������
select  e.last_name,m.last_name from employees e join employees m on e.manager_id = m.employee_id where e.last_name like '%k%';
