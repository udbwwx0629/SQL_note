-- 1.��ѯ��Zlotkey��ͬ���ŵ�Ա�������͹���
-- 2.��ѯ���ʱȹ�˾ƽ�����ʸߵ�Ա����Ա���ţ������͹��ʡ�
-- 3.��ѯ�������й��ʱȱ�����ƽ�����ʸߵ�Ա����Ա����, �����͹���
-- 4.��ѯ�������а�����ĸu��Ա������ͬ���ŵ�Ա����Ա���ź�����
-- 5. ��ѯ�ڲ��ŵ�location_idΪ1700�Ĳ��Ź�����Ա����Ա����
-- 6.��ѯ��������King��Ա�������͹���
-- 7.��ѯ������ߵ�Ա����������Ҫ��first_name��last_name��ʾΪһ�У�����Ϊ ��.��
--------------------------------------------------------------------------------------------

-- 1.��ѯ��Zlotkey��ͬ���ŵ�Ա�������͹���
-- �ٲ�ѯZlotkey�Ĳ���
select department_id
from employees
where last_name = 'Zlotkey'

-- �ڲ�ѯ���ź�=�ٵ������͹���
select last_name,salary
from employees
where department_id = (
	select department_id
	from employees
	where last_name = 'Zlotkey'
);
?

-- 2.��ѯ���ʱȹ�˾ƽ�����ʸߵ�Ա����Ա���ţ������͹��ʡ�
-- �ٲ�ѯƽ������
select avg(salary)
from employees

-- �ڲ�ѯ����>�ٵ�Ա���ţ������͹��ʡ�
select last_name,employee_id,salary
from employees
where salary>(
	select avg(salary)
	from employees
);

-- 3.��ѯ�������й��ʱȱ�����ƽ�����ʸߵ�Ա����Ա����, �����͹���
-- �ٲ�ѯ�����ŵ�ƽ������
select avg(salary),department_id
from employees
group by department_id
-- �����Ӣٽ������employees������ɸѡ
select employee_id,last_name,salary,e.department_id
from employees e
inner join (
select avg(salary) ag,department_id
from employees
group by department_id   ) ag_dep
on e.department_id = ag_dep.department_id
where salary>ag_dep.ag ;

-- 4.��ѯ�������а�����ĸu��Ա������ͬ���ŵ�Ա����Ա���ź�����
-- �ٲ�ѯ�����а�����ĸu��Ա���Ĳ���
select  distinct department_id
from employees
where last_name like '%u%'
 -- �ڲ�ѯ���ź�=���е�����һ����Ա���ź�����
 select last_name,employee_id
 from employees
 where department_id
 in(
 	select  distinct department_id
 	from employees
 where last_name like '%u%' );

-- 5. ��ѯ�ڲ��ŵ�location_idΪ1700�Ĳ��Ź�����Ա����Ա����
 -- �ٲ�ѯlocation_idΪ1700�Ĳ���
 select distinct department_id
 from departments
 where location_id  = 1700
 -- �ڲ�ѯ���ź�=���е�����һ����Ա����
 select employee_id
 from employees
 where department_id =any(
 		select distinct department_id
 		from departments
 		where location_id  = 1700  );

-- 6.��ѯ��������King��Ա�������͹���
 -- �ٲ�ѯ����Ϊking��Ա�����
 select employee_id
 from employees
 where last_name  = 'K_ing'
 -- �ڲ�ѯ�ĸ�Ա����manager_id = ��
 select last_name,salary
 from employees
 where manager_id in(
  	select employee_id
  	from employees
  	where last_name  = 'K_ing'  );

-- 7.��ѯ������ߵ�Ա����������Ҫ��first_name��last_name��ʾΪһ�У�����Ϊ ��.��
-- �ٲ�ѯ��߹���
select max(salary)
from employees
-- �ڲ�ѯ����=�ٵ���.��
select concat(first_name,last_name) "��.��"
from employees
where salary=(
 	select max(salary)
  	from employees  );




