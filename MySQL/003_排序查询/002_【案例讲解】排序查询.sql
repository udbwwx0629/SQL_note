-- 1.��ѯԱ���������Ͳ��źź���н������н���� ����������

select last_name,department_id,salary*12*(1+IFNULL(commission_pct,0)) ��н
from employees
order by ��н desc,last_name asc;

-- 2.ѡ���ʲ���8000��17000��Ա���������͹��ʣ������ʽ���
select last_name,salary
from employees
where salary not between 8000 and 17000
order by salary desc;

-- 3.��ѯ�����а���e��Ա����Ϣ�����Ȱ�������ֽ��������ٰ����ź�����

select *,length(email)
from employees
where email like '%e%'
order by length(email) desc,department_id asc;
