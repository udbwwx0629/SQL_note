-- 1.length ��ȡ����ֵ���ֽڸ���
select length('john');
select length('������hahaha');
SHOW VARIABLES LIKE '%char%'

-- 2.concat ƴ���ַ���
select concat(last_name,'_',first_name) ���� from employees;

-- 3.upper��lower
select upper('john');
select lower('joHn');
-- ʾ�������ձ��д������Сд��Ȼ��ƴ��
select concat(upper(last_name),lower(first_name))  ���� from employees;

-- 4.substr��substring
ע�⣺������1��ʼ
-- ��ȡ��ָ�����������������ַ�
select substr('��Ī�����½չԪ',7)  out_put;

-- ��ȡ��ָ��������ָ���ַ����ȵ��ַ�
select substr('��Ī�����½չԪ',1,3) out_put;

-- ���������������ַ���д�������ַ�СдȻ����_ƴ�ӣ���ʾ����
select concat(upper(substr(last_name,1,1)),'_',lower(substr(last_name,2)))  out_put
from employees;

-- 5.instr �����Ӵ���һ�γ��ֵ�����������Ҳ�������0
select instr('��������ڰ�����������','�����') as out_put;

-- 6.trim
select length(trim('    �Ŵ�ɽ    ')) as out_put;
select trim('aa' from 'aaaaaaaaa��aaaaaaaaaaaa��ɽaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')  as out_put;

-- 7.lpad ��ָ�����ַ�ʵ�������ָ������
select lpad('������',2,'*') as out_put;

-- 8.rpad ��ָ�����ַ�ʵ�������ָ������
select rpad('������',12,'ab') as out_put;

-- 9.replace �滻
select replace('���������������������������޼ɰ�����������','������','����') as out_put;
