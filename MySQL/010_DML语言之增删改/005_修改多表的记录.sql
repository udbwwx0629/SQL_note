/*
2.�޸Ķ��ļ�¼�����䡿
�﷨��
sql92�﷨��
update ��1 ����,��2 ����
set ��=ֵ,....
where ��������
and ɸѡ����;

sql99�﷨��
update ��1 ����
inner | left | right | join ��2 ����
on ��������
set ��=ֵ,......
where ɸѡ����
*/

-- 2.�޸Ķ��ļ�¼
-- ����1���޸����޼ɵ�Ů�ֻ���Ϊ114
update boys bo INNER JOIN beauty b ON bo.id=b.boyfriend_id SET b.phone ='114' where bo.boyName='���޼�';

-- ����2���޸�û�������ѵ�Ů��������ѱ�Ŷ�Ϊ2��
update boys bo RIGHT JOIN beauty b ON bo.id =b.boyfriend_id SET b.boyfriend_id =2 where bo.id is null;
