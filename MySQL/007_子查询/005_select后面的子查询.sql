-- SELECT����  /* ����֧�ֱ����Ӳ�ѯ */
-- ����1:��ѯÿ�����ŵ�Ա������
select d.*,(
                select count(*)
                from employees e
                where e.department_id =d.department_id) ����
from departments d;
-- ����2:��ѯԱ����=102�Ĳ�����,�Ӳ�ѯ��ʹ��������,��������,���һ��
select (
               select department_name
               from departments d
               inner join employees e
               on d.department_id=e.department_id
               where e.employee_id=102) ������ ;
-- ��  ֱ��ʹ��������(���Ƽ�)
select department_name ������ 
from departments d
inner join employees e
on d.department_id =e.department_id
where e.employee_id=102;
