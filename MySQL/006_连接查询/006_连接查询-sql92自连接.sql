-- ����:��ѯԱ�������ϼ�������
select e.last_name,e.employees_id,m.last_name, e.employees_id from employees e,employees m where e.manager_id=m.employee_id;
