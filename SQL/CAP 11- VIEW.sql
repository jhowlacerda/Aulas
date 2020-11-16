CREATE OR REPLACE VIEW V_ALUNO
AS
    SELECT cod_aluno as codigo, salario,estado, nome as aluno, cidade
    from taluno
    where estado = 'RS';
    
    
SELECT *
FROM V_ALUNO
ORDER BY ALUNO;

CREATE OR REPLACE VIEW V_CONTRATO_TOP
AS 
SELECT COD_CONTRATO, DESCONTO
FROM TCONTRATO
WHERE DESCONTO >= 10;

SELECT VIEW_NAME, TEXT
FROM USER_VIEWS;



CREATE OR REPLACE VIEW V_ALUNO2(COD, ALUNO, SAL)
AS 
SELECT COD_ALUNO, NOME, SALARIO
FROM TALUNO;



SELECT *
FROM V_ALUNO2;



CREATE OR REPLACE VIEW V_CONTRATO
AS 
SELECT Trunc(DATA) AS DATA,
        MAX(DESCONTO) MAXIMO,
        AVG(DESCONTO0)MEDIA,
        COUNT(*)QTDE
FROM TCONTRATO
GROUP BY TRUNC(DATA);


select *
from tcontrato;


CREATE OR REPLACE VIEW V_PESSOA_F
AS
    SELECT COD_PESSOA, TIPO, NOME, COD_RUA AS RUA
    FROM TPESSOA
    WHERE TIPO = 'F';
    
CREATE OR REPLACE VIEW vcursos1000ck
as
select cod_curso, nome, valor
from tcurso
where valor= 1000
with check option constraint vcursos1000_ck;


insert into vCursos1000ck
        (cod_curso, nome,valor)
values  (52,'teste y', 9000);--(52,'teste y', 1000);


select *
from v_aluno;

delete from v_aluno where codigo = 3;

insert into v_aluno
values (50,500,'RS','MARIA', 'NH');


CREATE OR REPLACE VIEW V_ALUNO3
AS
    SELECT COD_ALUNO CODIGO,
            NOME ALUNO, CIDADE
    FROM TALUNO
    WHERE ESTADO = 'RS'
    WITH READ ONLY;--NAO PODE EXECUTAR DELETE, É SOMENTE PARA LEITURA
    
    
DROP VIEW V_ALUNO3;
    


