-- ����9�����ϲ�ѯ
/*
union ���Ϻϲ�����������ѯ���Ľ���ϲ���һ�����
�﷨��
��ѯ���1
union
��ѯ���2
union
...

Ӧ�ó�����
Ҫ��ѯ�Ľ�������ڶ�����Ҷ����û��ֱ�ӵ����ӹ�ϵ������ѯ����Ϣһ��ʱ
�ص㣺��
1��Ҫ�������ѯ���Ĳ�ѯ������һ�µģ�
2��Ҫ�������ѯ���Ĳ�ѯ��ÿһ�е����ͺ�˳�����һ��
3��union�ؼ���Ĭ��ȥ�أ����ʹ��union all ���԰����ظ���
*/

-- ����İ�������ѯ���ű��>90���������a��Ա����Ϣ
select * from employees where email like '%a%' or department_id>90;;

select * from employees  where email like '%a%' union select * from employees  where department_id>90;

-- ��������ѯ�й��û������Ե���Ϣ�Լ�����û��������Ե��û���Ϣ
select id,cname from t_ca where csex='��' union all select t_id,tname from t_ua where tGender='male';
