-- now ���ص�ǰϵͳ����+ʱ��
select NOW();

-- curdate ���ص�ǰϵͳ���ڣ�������ʱ��
select CURDATE();

-- curtime ���ص�ǰʱ�䣬����������
select CURTIME();

-- ���Ի�ȡָ���Ĳ��֣��ꡢ�¡��ա�Сʱ�����ӡ���
select YEAR(NOW()) ��;
select YEAR('1998-1-1') ��;
select  YEAR(hiredate) �� from employees;
select MONTH(NOW()) ��;
select MONTHNAME(NOW()) ��;

-- str_to_date ���ַ�ͨ��ָ���ĸ�ʽת��������
select STR_TO_DATE('1998-3-2','%Y-%c-%d') as out_put;

-- ��ѯ��ְ����Ϊ1992--4-3��Ա����Ϣ
-- ����1:
select * from employees where hiredate = '1992-4-3';
-- ����2:
select * from employees where hiredate = STR_TO_DATE('4-3 1992','%c-%d %Y');

-- date_format ������ת�����ַ�
select DATE_FORMAT(NOW(),'%y��%m��%d��') as out_put;

-- ��ѯ�н����Ա��������ְ����(xx��/xx�� xx��)
select last_name,DATE_FORMAT(hiredate,'%m��/%d�� %y��') ��ְ����
from employees
where commission_pct is not null;
