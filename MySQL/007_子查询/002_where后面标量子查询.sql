-- where��having����
/*
1�������Ӳ�ѯ�������Ӳ�ѯ��
2�����Ӳ�ѯ  �������Ӳ�ѯ��
3�����Ӳ�ѯ  �����ж��У�
�ص㣺
a.�Ӳ�ѯ����С������
b.�Ӳ�ѯһ������������Ҳ�
c.�����Ӳ�ѯ,һ������Ŷ��в�����ʹ��
> < >= <= = <>
���Ӳ�ѯ,һ������Ŷ��в�����ʹ��
IN,ANY/SOME,ALL
d.�Ӳ�ѯ��ִ������������ѯִ��,����ѯ�������õ����Ӳ�ѯ���
*/
-- һ �����Ӳ�ѯ

-- ����1.˭�Ĺ��ʱ�abel��?
-- 1.��ѯabel�Ĺ���
select salary from employees where last_name= 'Abel';
-- 2.��ѯԱ����Ϣ,Ҫ��salary��1��
select * from employees where salary >( select salary from employees where last_name ='Abel');

-- ����2.����job_id��141Ա����ͬ,salary��143��Ա�����Ա������,job_id�͹���
-- 1.��ѯ141�ŵ�Ա��job_id
select job_id
from employees
where employee_id=141;
-- 2.��ѯ143�ŵ�Ա��salary
select salary
from employees
where employee_id =143;
-- 3.��ѯԱ������,job_id�͹���,Ҫ��141Ա����job_id��ͬ���� salary��143�Ŷ�
select last_name,job_id,salary
from employees
where job_id =(select job_id from employees where employee_id=141)
and salary >(select salary from employees where employee_id =143);

-- ����3:���ع�˾�������ٵ�Ա����last_name,job_id��salary
-- 1.��ѯ���ٵĹ���
select min(salary) from employees;
-- 2.��ѯlast_name,job_id,salary,Ҫ��salary<1���
select last_name,job_id,salary from employees where salary=(select min(salary) from employees);

-- ����4:��ѯ��͹��ʴ���50�Ų�����͹��ʵĲ���id��������͹���
-- 1.��ѯ50�Ų��ŵ���͹���
select min(salary) from employees where department_id =50;
-- 2.��ѯÿ�����ŵ���͹���
select min(salary),department_id from employees group by department_id;
-- 3.��2������ɸѡ,����min(salary)>1�Ľ��
select min(salary),department_id from employees group by department_id having min(salary)>(select min(salary) from employees where department_id = 50);

-- �Ƿ�ʹ�ñ������Ӳ�ѯ
-- a.�Ӳ�ѯ��ʹ��salary,�������Ӳ�ѯ,���±���
select min(salary),department_id from employees group by department_id having min(salary)>(select salary from employees where department_id = 50);
-- b.�Ӳ�ѯ��ʹ��id=250�Ļ�,���ֲ�ѯΪ��,�򲻳���, ��û��ʵ������,����Ϊ�Ƿ���ѯ
select min(salary),department_id from employees group by department_id having min(salary)>(select min(salary) from employees where department_id = 250);
