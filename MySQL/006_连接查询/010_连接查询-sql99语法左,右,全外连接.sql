 -- ��������(���������,�ұ��Ǵӱ�)
/*
Ӧ�ó��������ڲ�ѯһ�������У���һ����û�еļ�¼
�ص㣺
1��	�����ӵĲ�ѯ���Ϊ�����е����м�¼
����ӱ����к���ƥ��ģ�����ʾƥ���ֵ
����ӱ���û�к���ƥ��ģ�����ʾnull
�����Ӳ�ѯ���=�����ӽ��+�������ж��ӱ�û�еļ�¼
2��	�������ӣ�left join��ߵ�������
       �������ӣ�right join�ұߵ�������
3����������⽻���������˳�򣬿���ʵ��ͬ����Ч��
4��ȫ������=�����ӵĽ��+��1���е���2û�е�+��2���е���1û�е�
*/

-- ����1:��ѯû����Ů���ѵ�Ů����(��������:����beauty,�ӱ�boyΪ�ӱ�)
select b.*,bo.* from beauty b left outer join boys bo on b,boyfriend_id=bo_id;

-- ����1:��ѯ�ĸ�����û��Ա��
-- ����
select d.*,e.employee_id from departments d left outer join employees e on d.department_id = e.department_id where e.employee_id is null;
-- ����
select d.*,e.employee_id from employees e right outer join departments d on d.department_id = e.department_id where e.employee_id is null;
-- ȫ��
use girls;
select b.*,bo.* from beauty b full outer join boys bo on b.boyfriend =bo.id;

