-- ��myemployees��
	USE myemployees;

-- 1.��ѯ���еĵ����ֶ�
	select last_name from employees;

-- 2.��ѯ���еĶ���ֶ�
	select last_name,salary,email from employees;

-- 3.��ѯ���е������ֶ�

	-- ��һ�ַ���,˳���ԭ���˳����һ����
	select * from employees;

	-- �ڶ��ַ������鷳����Ҫһ��һ��ȥд������˳������Լ���,
	select
    `employee_id`,
    `first_name`,
    `last_name`,
    `phone_number`,
    `last_name`,
    `job_id`,
    `phone_number`,
    `job_id`,
    `salary`,
    `commission_pct`,
    `manager_id`,
    `department_id`,
    `hiredate`
	FROM employees;

-- ϸ�ڲ��䣬���غţ�1�Աߵ�` `,���������ϣ����ؼ��ּӣ�����˵������ȥ��,����
	select `NAME` FROM employees;

-- 4.��ѯ����ֵ
	select 100;
	select 'john';

-- 5.��ѯ���ʽ
	select 100 * 98;

-- 6.��ѯ����
	select VERSION();


