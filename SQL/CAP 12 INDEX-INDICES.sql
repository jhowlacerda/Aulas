select *from taluno where nome like '%A%';


create index IND_TALUNO_NOME ON TALUNO(NOME);


SELECT * 
FROM TALUNO
WHERE NOME LIKE '%A%' AND CIDADE LIKE '%A%';

create index IND_TALUNO_NOMECIDADE ON TALUNO(NOME,CIDADE);


SELECT NOME,CIDADE FROM TALUNO
WHERE NOME LIKE '%A%' AND CIDADE LIKE '%A%';

SELECT *
FROM USER_INDEXES;

DROP INDEX IND_TALU_NOMECIDADE;

CREATE SYNONYM ALU FOR TALUNO;

SELECT *
FROM ALU;

