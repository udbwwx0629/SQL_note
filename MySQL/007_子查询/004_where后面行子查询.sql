-- 3�����Ӳ�ѯ�������һ�ж��л���ж��У�

-- ��������ѯԱ�������С���ҹ�����ߵ�Ա����Ϣ

select *
from employees
where (employee_id,salary)=(
	select min(employee_id),max(salary)
	from employees
);

-- �ٲ�ѯ��С��Ա�����
select min(employee_id)
from employees

-- �ڲ�ѯ��߹���
select max(salary)
from employees

-- �۲�ѯԱ����Ϣ
select *
from employees
where employee_id=(
	select min(employee_id)
	from employees
)and salary=(
	select max(salary)
	from employees
);
