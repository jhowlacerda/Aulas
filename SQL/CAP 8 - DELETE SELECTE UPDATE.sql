INSERT INTO TDESCONTO(CLASSE, INFERIOR, SUPERIOR)
VALUES('&cla',&inf,&sup);


SELECT *
FROM TDESCONTO;
WHERE CLASSE = '&cla';

UPDATE TDESCONTO SET
INFERIOR = &inf,
SUPERIOR = &sup
where classe = '&cla';

DELETE FROM TDESCONTO
WHERE CLASSE = '&cla';

CREATE TABLE TDESCONTO2
AS SELECT *
FROM TDESCONTO;

SELECT *
FROM TDESCONTO2;


--DELETA TODOS OS REGISTROS
DELETE FROM TDESCONTO2;

--NÃO TEM CLAUSULA WHERE E NÃO TEM ROLLBACK, DELETA TODOS OS REGISTROS, NAO GERA LOG
TRUNCATE TABLE DESCONTO2;


SELECT *
FROM TDESCONTO;

SAVEPOINT upd_b;

UPDATE TDESCONTO SET
SUPERIOR = 88
where classe = 'B';


SAVEPOINT upd_a;

UPDATE TDESCONTO SET
SUPERIOR = 88
where classe = 'A';

SAVEPOINT ins_ok;

INSERT INTO TDESCONTO(CLASSE, INFERIOR, SUPERIOR)
VALUES('&cla',&inf,&sup);


ROLLBACK TO SAVEPOINT ins_ok;
ROLLBACK TO SAVEPOINT upd_a;
ROLLBACK TO SAVEPOINT upd_b;


delete
drop table tdesconto2;