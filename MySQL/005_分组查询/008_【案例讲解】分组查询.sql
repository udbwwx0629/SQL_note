-- 1.��ѯ��job_id��Ա�����ʵ����ֵ����Сֵ��ƽ��ֵ���ܺͣ�����job_id����
-- 2.��ѯԱ����߹��ʺ���͹��ʵĲ��(DIFFERENCE)
-- 3.��ѯ��������������Ա������͹��ʣ�������͹��ʲ��ܵ���6000��û�й����ߵ�Ա������������
-- 4.��ѯ���в��ŵı�ţ�Ա�������͹���ƽ��ֵ������ƽ�����ʽ���
-- 5.ѡ����и���job_id��Ա������

-- 1.
select max(salary),min(salary),avg(salary),sum(salary),job_id from employees group by job_id order by job_id;
-- 2.
select max(salary)-min(salary) difference from employees;
-- 3.
select min(salary) ,manager_id from employees where manger_id is not null group by manager_id having min(salary)>=6000;
-- 4.
select department_id,count(*),avg(salary) from employees group by department_id order by avg(salary) desc;
-- 5.
select count(*),job_id from employees group by job_id;
