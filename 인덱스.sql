--INDEX�� PK, UNIQUE Ű ���� ������ �������� �� �ڵ����� �����˴ϴ�.
--�˻��ӵ��� ������ ���ݴϴ�.
CREATE TABLE EMPS AS (SELECT * FROM EMPLOYEES WHERE 1=1);
SELECT * FROM EMPS;
--�ε��� �߰�
CREATE INDEX EMPS_FIRST_NAME_IDX ON EMPS(FIRST_NAME);--�ε����̸� ON ���̺��(�÷���)
--�ε��� ����
DROP INDEX EMPS_FIRST_NAME_IDX;