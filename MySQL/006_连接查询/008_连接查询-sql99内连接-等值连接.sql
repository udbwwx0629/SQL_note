-- 1����ֵ����

-- ����1.��ѯԱ������������
select last_name,department_name
from departments d
 join  employees e
on e.`department_id` = d.`department_id`;
-- ����2.��ѯ�����а���e��Ա�����͹����������ɸѡ��
select last_name,job_title
from employees e
inner join jobs j
on e.`job_id`=  j.`job_id`
WHERE e.`last_name` LIKE '%e%';
-- 3. ��ѯ���Ÿ���>3�ĳ������Ͳ��Ÿ���������ӷ���+ɸѡ��
-- �ٲ�ѯÿ�����еĲ��Ÿ���
-- ���ڢٽ����ɸѡ����������
select city,count(*) ���Ÿ���
from departments d
inner join locations l
on d.`location_id`=l.`location_id`
GROUP BY city
HAVING COUNT(*)>3;

-- ����4.��ѯ�ĸ����ŵ�Ա������>3�Ĳ�������Ա���������������������������
-- �ٲ�ѯÿ�����ŵ�Ա������
select count(*),department_name
from employees e
inner join departments d
on e.`department_id`=d.`department_id`
GROUP BY department_name
-- �� �ڢٽ����ɸѡԱ������>3�ļ�¼��������
select count(*) ����,department_name
from employees e
inner join departments d
on e.`department_id`=d.`department_id`
GROUP BY department_name
HAVING COUNT(*)>3
ORDER BY COUNT(*) DESC;
-- 5.��ѯԱ����������������������������������������������ӣ�
select last_name,department_name,job_title
from employees e
inner join departments d on e.`department_id`=d.`department_id`
INNER JOIN jobs j ON e.`job_id` = j.`job_id`
ORDER BY department_name DESC;
