set serveroutput on;
DECLARE 
    vCod taluno.cod_aluno%TYPE := 1;
    vCidade taluno.cidade%TYPE;
    x NUMBER;
BEGIN
    SELECT Cidade INTO vCidade
    FROM TAluno
    Where COD_ALUNO = vCod;
    X := 0/0;
    dbms_output.put_line('Cidade: '||vCidade);
EXCEPTION
    WHEN no_data_found then 
    RAISE_APPLICATION_ERROR(-20001,'Aluno Inexistente!'||SQLCODE||' '||SQLERRM);
    

    
    WHEN too_many_rows then 
    RAISE_APPLICATION_ERROR(-20002,'Registro Duplicado!'||SQLCODE||' '||SQLERRM);
    
    WHEN others then 
    RAISE_APPLICATION_ERROR(-20003,'Exceção Desconhecida!'||SQLCODE||' '||SQLERRM);
END;



    
    
CREATE TABLE CONTAS
(
    Codigo  INTEGER NOT NULL PRIMARY KEY,
    Valor   NUMBER(10, 2),
    Juros   NUMBER(10, 2),
    Vencimento  DATE
);


INSERT INTO CONTAS VALUES(100,550,50,SYSDATE-10);

SELECT *
FROM CONTAS;



set serveroutput on;
DECLARE 
    vDt_vencimento DATE;
    vConta NUMBER:= 100;
    eConta_vencida EXCEPTION;
BEGIN
    SELECT vencimento 
    INTO vdt_vencimento
    FROM CONTAS
    Where codigo= vCONTA;
    IF vdt_vencimento < TRUNC(SYSDATE)THEN
        RAISE eConta_vencida;
    END IF;
EXCEPTION
    WHEN eConta_Vencida then 
    DBMS_OUTPUT.PUT_LINE('Conta vencida');
    UPDATE contas SET valor = valor + juros
    WHERE codigo = vConta;
END;


select *
from contas;

set serveroutput on;
DECLARE
    eFk_inexistente EXCEPTION;
    PRAGMA EXCEPTION_INIT(eFK_inexistente, -02291);
BEGIN
    INSERT INTO TBAIRRO VALUES(100,100,'ERRO');
EXCEPTION
    WHEN eFk_Inexistente then
        RAISE_APPLICATION_ERROR(-20200, 'Cidade não existe!');

END;

SELECT *
FROM TBAIRRO;



SELECT *
FROM TCIDADE;