set serveroutput on;

DECLARE
    vValor NUMBER(8,2);
    vNome VARCHAR2(30);
BEGIN
    SELECT valor, nome
    into vValor, vNome
    from tcurso
    where cod_curso = &cod_curso;
    DBMS_OUTPUT.PUT_LINE('Valor: '||TO_CHAR(vValor, 'fm9999.99'));
    
    DBMS_OUTPUT.PUT_LINE('Curso: '|| InitCap(vNome));
END;

SELECT *
FROM TCURSO;



DECLARE 
vDt_compra tcontrato.DATA%TYPE;
vDt_curso tcontrato.Data%TYPE;
BEGIN
    SELECT data, data + 10
    into vDt_compra, vDt_curso
    FROM tcontrato
    WHERE cod_contrato = &Contrato;
    DBMS_OUTPUT.put_line('DATA COMPRA: ' || vDt_compra);
    DBMS_OUTPUT.put_line('DATA CURSO: ' || vDt_curso);
END;



SELECT *
FROM TCONTRATO;



SELECT MAX(COD_CONTRATO) FROM TCONTRATO;

CREATE SEQUENCE SEQ_CONTRATO START WITH 8;

DECLARE 
vCod tcontrato.cod_contrato%TYPE;
BEGIN
    SELECT SEQ_CONTRATO.nextval
    into vCod
    FROM DUAL;
    insert into tcontrato(cod_contrato,data,cod_aluno,desconto)values(vcod, sysdate, 2, null);
    DBMS_OUTPUT.put_line('Criado Contrato ' || vCod);
END;


select seq_contrato.currval from dual;



select *
from tcontrato;


DECLARE 
vValor TCurso.Valor%TYPE := &Valor;
BEGIN
    UPDATE tcurso set
    Valor = Valor + vValor
    Where carga_horaria >= 30;
END;


select *
from tcurso;



DECLARE 
vContrato TContrato.COD_CONTRATO%TYPE := &contrato;
BEGIN
    DELETE FROM TCONTRATO
    Where Cod_Contrato = vContrato;
END;


    select * FROM TCONTRATO;
    
    
DECLARE 
    vContrato NUMBER := &cod_contrato;
    vtexto VARCHAR2(50);
BEGIN
    UPDATE TCONTRATO SET
    desconto = desconto - 2
    Where Cod_Contrato >= vContrato;
    
    vtexto := SQL%ROWCOUNT;
--retorna qtde de registros afetados pelo comando sql
    DBMS_OUTPUT.PUT_LINE(vtexto||'linhas atualizadas');
END;    
    
    