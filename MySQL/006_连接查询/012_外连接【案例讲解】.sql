
-- һ����ѯ���>3��Ů�����������Ϣ����������г���ϸ�����û�У���null���

select b.id,b.name,bo.*
from beauty b
left outer join boys bo
on b.`boyfriend_id` = bo.`id`
WHERE b.`id`>3;

-- ������ѯ�ĸ�����û�в���
select city
from departments d
right outer join locations l
on d.`location_id`=l.`location_id`
WHERE  d.`department_id` IS NULL;

-- ������ѯ������ΪSAL��IT��Ա����Ϣ
-- ����һ
select e.*,d.department_name,d.`department_id`
FROM departments  d
LEFT JOIN employees e
ON d.`department_id` = e.`department_id`
where d.`department_name` IN('SAL','IT');

-- ������
select * from departments
where `department_name` IN('SAL','IT');
