����8����ҳ��ѯ��
/*  Ӧ�ó�������Ҫ��ʾ�����ݣ�һҳ��ʾ��ȫ����Ҫ��ҳ�ύsql���� �﷨��
select ��ѯ�б�
from ��
��join type join ��2
on ��������
where ɸѡ����
group by �����ֶ�
having ������ɸѡ
order by ������ֶΡ�
limit ��offset,��size;

offsetҪ��ʾ��Ŀ����ʼ��������ʼ������0��ʼ��
size Ҫ��ʾ����Ŀ����
�ص㣺
��limit�����ڲ�ѯ�������
�ڹ�ʽ
Ҫ��ʾ��ҳ�� page��ÿҳ����Ŀ��size
 	 	select ��ѯ�б�
 	from ��
 	limit (page-1)*size,size;

size=10
page
   	1	0
 	2  	10
 	3	20
 */

-- ����1����ѯǰ����Ա����Ϣ
select * from employees LIMIT 0,5;
select * from employees LIMIT 5;

-- ����2����ѯ��11��-��25��
select * from employees LIMIT 10,15;

-- ����3���н����Ա����Ϣ�����ҹ��ʽϸߵ�ǰ10����ʾ����
select last_name from employees where commission_pct is not null order by salary desc LIMIT 10 ;


