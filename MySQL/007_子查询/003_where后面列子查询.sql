-- ���Ӳ�ѯ(�����Ӳ�ѯ)
-- ����1:����location_id��1400��1700�Ĳ����е�����Ա������
-- 1.��ѯlocation_id��1400��1700�Ĳ��ű��
select distinct department_id
from departments
where location_id in(1400,1700);
-- 2.��ѯԱ������,Ҫ���ź���-- 1�б��е�ĳһ��
select last_name
from employees
where department_id in(
                   select distinct department_id
                   from departments
                   where location_id in(1400,1700));
-- ��
select last_name
from employees
where department_id = any(
                   select distinct department_id
                   from departments
                   where location_id in(1400,1700));


select last_name
from employees
where department_id not in(
                   select department_id
                   from departments
                   where location_id in(1400,1700));
-- ��
select last_name
from employees
where department_id <> all (
                   select department_id
                   from departments
                   where location_id in(1400,1700));

-- ����2:�������������б�job_idΪ'IT_PROG'������һ���ʵ͵�Ա����Ա����, ����,job_id�Լ�salary
-- 1.��ѯjob_idΪIT_PROG������һ����
select distinct salary
from employees
where job_id='IT_PROG';
-- 2.��ѯԱ����,����,job_id�Լ�salary,salary<-- 1������һ��
select last_name,employee_id,job_id,salary
from employees
where salary < any (
               select distinct salary
               from employees
               where job_id='IT_PROG')
and job_id <>'IT_PROG';
-- ��
select last_name,employee_id,job_id,salary from employees where salary < (
 select max(salary) from employees where job_id ='IT_PROG'
) and job_id <> 'IT_PROG';

-- ����3:�������������б�job_idΪ'IT_PROG'�������й��ʶ��͵�Ա����Ա����,����,job_id�Լ�salary
select last_name,employee_id,job_id,salary from employees where salary<all(
 select distinct salary from employees where job_id='IT_PROG'
) and job_id <> 'IT_PROG';
-- ��
select last_name,employee_id,job_id,salary from employees where salary <(
 select min(salary) from employees where job_id='IT_PROG'
) and job_id<>'IT_PROG';
