-- �����޸����
/*
1.�޸ĵ���ļ�¼
�﷨��
update ����
set ��=��ֵ,��=��ֵ,.....
where ɸѡ����;

2.�޸Ķ��ļ�¼�����䡿
*/

-- 1.�޸ĵ���ļ�¼
-- ����1���޸�beauty�������Ƶ�Ů��ĵ绰Ϊ13899888899
update beauty set phone='13899888899' where NAME like '��%';

-- 2.�޸�boys����id��Ϊ2������Ϊ�ŷɣ�����ֵ10
update boys set boyname='�ŷ�',user=10 WHERE id=2;
