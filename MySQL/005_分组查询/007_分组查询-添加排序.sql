-- 4.�������
-- ����1����ѯÿ������ÿ�����ֵ�Ա����ƽ�����ʣ����Ұ�ƽ�����ʵĸߵ���ʾ
select avg(salary),job_id,department_id from employees group by job_id,department_id order by avg(salary) desc;
-- ����2��ÿ�������н����Ա������߹���>6000�Ĺ��ֱ�ź���߹���,����߹�������
select max(salary) m,job_id from employees where commission_pct is not null group by job_id having m>6000 order by m asc;

