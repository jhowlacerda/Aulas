SELECT * FROM TALUNO;

ALTER TABLE TALUNO ADD ESTADO CHAR(2) DEFAULT 'RS';

ALTER TABLE TALUNO ADD SALARIO NUMBER(8,2) DEFAULT 620;

UPDATE TALUNO SET
ESTADO ='AC' ,
 SALARIO = 250
WHERE COD_ALUNO = 1;

UPDATE TALUNO SET
ESTADO ='MT' ,
 SALARIO = 2000
WHERE COD_ALUNO = 2;

UPDATE TALUNO SET
ESTADO ='SP' ,
 SALARIO = 800
WHERE COD_ALUNO = 5;

COMMIT;

SELECT * FROM TALUNO
WHERE ESTADO <> 'RS'
AND SALARIO <= 800
ORDER BY SALARIO DESC;

INSERT INTO TALUNO (COD_ALUNO, NOME, CIDADE)
VALUES (SEQ_ALUNO.NEXTVAL,'VALDO', 'DOIS IMAOS');

INSERT INTO TALUNO (COD_ALUNO, NOME, CIDADE)
VALUES (SEQ_ALUNO.NEXTVAL,'ALDO', 'QUATRO IMAOS');

SELECT * FROM TALUNO;

SELECT * FROM TALUNO
ORDER BY COD_ALUNO;

UPDATE TALUNO SET
ESTADO = 'SP',
SALARIO = 900,
NOME = 'PEDRO'
WHERE COD_ALUNO = 27;

SELECT ESTADO,
SALARIO,
NOME FROM TALUNO
ORDER BY ESTADO, SALARIO DESC;

ALTER TABLE TALUNO ADD NASCIMENTO DATE DEFAULT SYSDATE - 1000;

SELECT SYSDATE - SYSDATE - 100 FROM DUAL;


SELECT * FROM TALUNO
ORDER BY COD_ALUNO;


UPDATE TALUNO SET
NASCIMENTO = '10/10/2001'
WHERE COD_ALUNO=1;

UPDATE TALUNO SET
NASCIMENTO = '10/08/2000'
WHERE COD_ALUNO=2;

SELECT COD_ALUNO, NASCIMENTO, Trunc(NASCIMENTO), NOME
FROM TALUNO
WHERE Trunc(NASCIMENTO) = '08/06/2017';

SELECT COD_ALUNO, NASCIMENTO, Trunc(NASCIMENTO), NOME
FROM TALUNO
WHERE NASCIMENTO
BETWEEN To_Date('25/08/2010 22:00','DD/MM/YYYY HH24:MI')
AND To_Date('25/08/2010 23:20','DD/MM/YYYY HH24:MI')

SELECT COD_CONTRATO, DATA, TOTAL,
DESCONTO, DESCONTO + 1000 AS CALCULO
FROM TCONTRATO
WHERE TOTAL <= DESCONTO + 1000;


SELECT * FROM TCONTRATO;

UPDATE TCONTRATO SET
DESCONTO = NULL
WHERE COD_CONTRATO = 2;

SELECT * FROM TCONTRATO
WHERE DESCONTO IS NULL;


SELECT * FROM TCONTRATO
WHERE DESCONTO IS NOT NULL;


SELECT * FROM TCONTRATO
WHERE DESCONTO BETWEEN 0 AND 10;

SELECT COD_CONTRATO, TOTAL, DESCONTO, NVL(DESCONTO,0)
FROM TCONTRATO
WHERE NVL(DESCONTO, 0) BETWEEN 0 AND 10;

UPDATE TCONTRATO SET
DESCONTO = 10
WHERE COD_CONTRATO = 4;

SELECT * FROM TCONTRATO
WHERE DESCONTO >= 0
AND DESCONTO <= 10
OR DESCONTO IS NULL;


SELECT * FROM TITEM
WHERE COD_CURSO IN (1,2,4);

SELECT * FROM TITEM
WHERE COD_CURSO NOT IN (1,2,4);

INSERT INTO TCURSO VALUES (5, 'WINDOWS', 1000, 50);

SELECT * FROM TCURSO
ORDER BY COD_CURSO;

SELECT * FROM TCURSO
WHERE COD_CURSO NOT IN(SELECT COD_CURSO FROM TITEM)


SELECT * FROM TCURSO
WHERE COD_CURSO IN(SELECT COD_CURSO FROM TITEM)



SELECT * FROM TCURSO WHERE NOME LIKE 'W%'
SELECT * FROM TCURSO WHERE NOME LIKE '%JAVA%'
SELECT * FROM TCURSO WHERE NOME LIKE '%FACES'

SELECT * FROM TCURSO
ORDER BY COD_CURSO;

COMMIT;

ALTER TABLE TCURSO ADD PRE_REQ INTEGER;

UPDATE TCURSO SET
PRE_REQ = 1
WHERE COD_CURSO = 2;


UPDATE TCURSO SET
PRE_REQ = 3
WHERE COD_CURSO = 4;


SELECT * FROM TCURSO WHERE PRE_REQ IS NULL

SELECT * FROM TCURSO WHERE PRE_REQ IS NOT NULL

SELECT * FROM TCURSO
WHERE valor > 750
OR valor < 1000
AND carga_horaria = 25


SELECT * FROM TCURSO
WHERE (valor > 750
OR valor < 1000)
AND carga_horaria = 25
























