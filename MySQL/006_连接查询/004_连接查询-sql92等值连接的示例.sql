-- 1.�������˳���Ƿ���Ե���(����)
select e.last_name,e.job_id,j.job_title from jobs j,employees e where e.job_id=j.job_id;
-- 2.���Լ�ɸѡ(����)
-- ����:��ѯ�н����Ա����������
select last_name,department_name from employees e ,departments d where e.department_id=d.department_id and commission_pct is not null;
-- ����2:��ѯ�����еڶ����ַ�Ϊ0�Ĳ������ͳ�����
select department_name,city from departments d ,location l where d.location_id=l.location_id and city like '_o%';
-- 3:���Լӷ���(����)
-- ����1:��ѯÿ�����еĲ��Ÿ���
select count(*) ���� ,city from departments d, location l where d.location_id=l.location_id group by city;
-- ����2:��ѯ�н����ÿ�����Ų������쵼��ź͸ò�����͹���
select department_name d,manager_id  from departments d,employees e  where d.department_id=e.department_id and commission_pct is not null group by  department_name,d.manager_id;
-- 4.���Լ�����
-- ����:��ѯÿ����������Ա�����������Ұ�Ա����������
select job_title,count(*) from employees e,jobs j where e.job_id=j.job_id group by job_title order by count(*) desc;
-- 5.����ʵ����������
-- ����:��ѯԱ�����������������ڵĳ���
select last_name, department_name,city from employees e,departments d,location l where e.department_id=d.department_id and d.location_id =l.location_id and city like 's%' order BYdepartment_name DESC;
