-- �ġ�exists���棨����Ӳ�ѯ��

/*
�﷨��
exists(�����Ĳ�ѯ���)
�����
1��0
*/

select EXISTS(
                select employee_id
              from employees
              where salary=300000);

-- ����1:��ѯ��Ա���Ĳ�����

-- in
select department_name
from departments d
where d.`department_id` IN(
select department_id
from employees  );

-- exists
select department_name
from departments d
where exists(
	select *
	from employees e
	where d.`department_id`=e.`department_id`
);

-- ��ѯû��Ů���ѵ�������Ϣ

-- in
 select bo.*
 from boys bo
 where bo.id not in (
 	select boyfriend_id
 	from beauty);

 -- exists
 select bo.*
 from boys bo
 where not exists(
 	select boyfriend_id
 	from beauty b
 	where bo.id = b.boyfriend_id
 );
