

CREATE TABLE TALUNO
(
  COD_ALUNO INTEGER NOT NULL,
  NOME VARCHAR(30),
  CIDADE VARCHAR2(30),
  CEP VARCHAR(10),
  PRIMARY KEY (COD_ALUNO)
);

SELECT * FROM TALUNO;

INSERT INTO TALUNO(COD_ALUNO,NOME,CIDADE,CEP)
VALUES(1,'JHOW','NOVO HAMBURGO','93000000')

INSERT INTO TALUNO(COD_ALUNO,NOME,CIDADE,CEP)
VALUES(2,'PAULA','IVOTI','93000000')

INSERT INTO TALUNO(COD_ALUNO,NOME,CIDADE,CEP)
VALUES(3,'MARIA','SAPIRANGA','93000000')


CREATE TABLE TCURSO
( COD_CURSO INTEGER NOT NULL PRIMARY KEY,
  NOME VARCHAR2(30),
  VALOR NUMBER(8,2),
  CARGA_HORARIA INTEGER
);

SELECT * FROM TCURSO;


INSERT INTO TCURSO VALUES(1, 'ORACLE SQL e PL/SQL',500,25);
INSERT INTO TCURSO VALUES(2, 'ORACLE DBA e PL/SQL',499,25);
INSERT INTO TCURSO VALUES(3, 'JAVA FUNDAMENTOS E 00',1500,100);
INSERT INTO TCURSO VALUES(4, 'JAVASERVER FACES',1600,100);

CREATE TABLE TCONTRATO
( COD_CONTRATO INTEGER NOT NULL PRIMARY KEY,
  DATA DATE,
  COD_ALUNO INTEGER,
  TOTAL NUMBER(8,2),
  DESCONTO NUMBER(5,2)
);

SELECT * FROM TCONTRATO;


INSERT INTO TCONTRATO VALUES(1, SYSDATE   ,1 ,500,10);
INSERT INTO TCONTRATO VALUES(2, SYSDATE   ,2 ,500,10);
INSERT INTO TCONTRATO VALUES(3, SYSDATE   ,3 ,1500,05);
INSERT INTO TCONTRATO VALUES(4, SYSDATE-5 ,2 ,1600,10);
INSERT INTO TCONTRATO VALUES(5, SYSDATE-4 ,5 ,800,10);
INSERT INTO TCONTRATO VALUES(6, SYSDATE-3 ,5 ,445,0);
INSERT INTO TCONTRATO VALUES(7, SYSDATE-2 ,5 ,445,20);

ALTER TABLE TCONTRATO ADD COL_TESTE VARCHAR(50);


SELECT * FROM TCONTRATO;

ALTER TABLE TCONTRATO DROP COLUMN COL_TESTE;

ALTER TABLE TALUNO RENAME COLUMN NOME TO NOME2;
ALTER TABLE TALUNO RENAME COLUMN NOME2 TO NOME;

SELECT * FROM TALUNO;

DROP TABLE TABELA;




