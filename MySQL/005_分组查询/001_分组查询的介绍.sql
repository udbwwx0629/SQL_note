/*
�﷨��

select ��ѯ�б�
from ��
��where ɸѡ������
group by ������ֶ�
��order by ������ֶΡ�;

�ص㣺
1���ͷ��麯��һͬ��ѯ���ֶα�����group by����ֵ��ֶ�
2��ɸѡ��Ϊ���ࣺ����ǰɸѡ�ͷ����ɸѡ
��Եı�			λ��		     ���ӵĹؼ���
����ǰɸѡ	ԭʼ��			group byǰ	where
�����ɸѡ	group by��Ľ����    group by��	having

����1�����麯����ɸѡ�ܲ��ܷ���where����
�𣺲���

����2��where����group by����having

һ�����������÷���ǰɸѡ�ģ�����ʹ�÷���ǰɸѡ�����Ч��

3��������԰������ֶ�Ҳ���԰�����ֶ�
4�����Դ���������ʹ��

*/
����:
select avg(salary) from employees group by department_i;
