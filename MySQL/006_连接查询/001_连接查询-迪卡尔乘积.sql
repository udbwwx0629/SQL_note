-- �Ͽ����˻�
/*
����:�ֳƶ���ѯ,����ѯ���ֶ������ڶ����ʱ,�ͻ��õ����Ӳ�ѯ
�ѿ����˻�����:��1 ��m��,��2��n��,���=m*n��
����ԭ��:û����Ч����������
��α���:�����Ч����������
*/
select * from beauty;
select * from boys;
select NAME,boyName from beauty,boys
where  beauty.boyfriend_id=boys.id;
