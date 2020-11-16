SELECT * FROM TALUNO;

SELECT * FROM TCONTRATO;


--PRODUTO CARTESIANO -> ERRADO
SELECT TALUNO.COD_ALUNO, TALUNO.NOME, TCONTRATO.TOTAL
FROM TALUNO, TCONTRATO

--CORRETO
SELECT TALUNO.COD_ALUNO, TALUNO.NOME, TCONTRATO.TOTAL
FROM TALUNO, TCONTRATO
WHERE TALUNO.COD_ALUNO = TCONTRATO.COD_ALUNO

UPDATE TALUNO SET
NOME = 'MARCOS'
WHERE COD_ALUNO = 5

