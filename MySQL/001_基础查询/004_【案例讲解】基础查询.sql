-- 1.	���������Ƿ����ִ�гɹ�
select last_name , job_id , salary as sal from employees;

-- 2.���������Ƿ����ִ�гɹ�
select  *  from employees;

-- 3.�ҳ���������еĴ���
select employee_id , last_name,salary * 12 as "ANNUAL  SALARY" from employees;

-- 4.��ʾ��departments�Ľṹ������ѯ���е�ȫ������

DESC departments;
select * from `departments`;

-- 5.��ʾ����employees�е�ȫ��job_id�������ظ���
select distinct job_id from employees;

-- 6.��ʾ����employees��ȫ���У�������֮���ö������ӣ���ͷ��ʾ��OUT_PUT

select IFNULL(commission_pct,0) as ������,commission_pct from employees;
-- -------------------------------------------
select concat(`first_name`,',',`last_name`,',',`job_id`,',',IFNULL(commission_pct,0)) AS out_put FROM employees;











