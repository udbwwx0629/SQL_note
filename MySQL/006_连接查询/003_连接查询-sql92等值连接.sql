-- һ��sq192��׼

-- 1.��ֵ����
/*
�ٶ���ֵ���ӵĽ��Ϊ���Ľ�������
��n������������Ҫn-1����������
�۶���˳��û��Ҫ��
��һ����ҪΪ�������
�ݿ��Դ���ǰ����������Ӿ�ʹ�ã��������򣬷��飬ɸѡ
*/

-- ����1:��ѯŮ�����Ͷ�Ӧ��������
select NAME,boysName from beauty,boys where beauty.boyfriend_id=boys.id;
-- ����2:��ѯԱ�����Ͷ�Ӧ�Ĳ�����
select last_name,department_name from employees , departments where employees.department_id = departments.department_id;

-- 2.Ϊ���������
/*
��������ļ���
�����ֶ���������ֶ�
*/
-- ����:��ѯԱ���������ֺţ�������
select e.last_name,job_id,job_title from employees e,jobs j where e.job_id=j.job_id;

