set serveroutput on;

DECLARE

TYPE rec_aluno IS RECORD
(
cod_aluno NUMBER NOT NULL := 0,
nome TALUNO.Nome%TYPE,
cidade TALUNO.Cidade%TYPE
);

registro rec_aluno;
BEGIN 
    registro.cod_aluno := 50;
    registro.nome :='Master';
    registro.cidade := 'Novo Hamburgo';
    DBMS_OUTPUT.PUT_LINE('Codigo: '||registro.cod_aluno);
    DBMS_OUTPUT.PUT_LINE('Nome: '||registro.nome);
    DBMS_OUTPUT.PUT_LINE('Cidade: '||registro.cidade);
END;


set serveroutput on;
DECLARE 
    reg TALUNO%ROWTYPE;--RECORD
    vcep VARCHAR(10) := '98300000';
BEGIN
    SELECT COD_ALUNO, NOME, CIDADE
    INTO reg.cod_aluno, reg.nome, reg.cidade
    FROM TALUNO
    WHERE COD_ALUNO = 1;
    
    reg.cep := '93500000';
    reg.salario := 1500;
    
    DBMS_OUTPUT.PUT_LINE('codigo: '||reg.cod_aluno);
    DBMS_OUTPUT.PUT_LINE('nome: '||reg.nome);
    DBMS_OUTPUT.PUT_LINE('codigo: '||reg.cidade);
    DBMS_OUTPUT.PUT_LINE('cep: '||reg.cep);
    DBMS_OUTPUT.PUT_LINE('salario: '||reg.salario);
END;



set serveroutput on;--MATRIZ
DECLARE 
    TYPE T_ALUNO IS TABLE OF TALUNO.NOME%TYPE
    INDEX BY BINARY_INTEGER;
    
    REGISTRO T_ALUNO;
BEGIN
    REGISTRO(1):= 'MARCIO';
    REGISTRO(2):= 'JOSE';
    REGISTRO(3):= 'PEDRO';
    DBMS_OUTPUT.PUT_LINE('NOME 1: '|| REGISTRO(1));
    DBMS_OUTPUT.PUT_LINE('NOME 2: '|| REGISTRO(2));
    DBMS_OUTPUT.PUT_LINE('NOME 3: '|| REGISTRO(3));
END;


SELECT COD_ALUNO, NOME
FROM TALUNO WHERE COD_ALUNO = 1;




set serveroutput on;--MATRIZ
DECLARE 
    TYPE NOME_TYPE IS TABLE OF TALUNO.NOME%TYPE;
    NOME_TABLE NOME_TYPE := NOME_TYPE();
    
BEGIN
    NOME_TABLE.EXTEND;
    NOME_TABLE(1) := 'PEDRO';
    NOME_TABLE.EXTEND;
    NOME_TABLE(2) := 'MARCIO';
    DBMS_OUTPUT.PUT_LINE('NOME 1: '|| NOME_TABLE(1));
    DBMS_OUTPUT.PUT_LINE('NOME 2: '|| NOME_TABLE(2));
    
END;






set serveroutput on;--MATRIZ
DECLARE 
    TYPE TIPO IS TABLE OF VARCHAR(30)INDEX BY VARCHAR2(2);
    UF_CAPITAL TIPO;
    
BEGIN
    UF_CAPITAL('RS') :='PORTO ALEGRE';
    UF_CAPITAL('RJ') :='RIO DE JANEIRO';
    UF_CAPITAL('PR') :='CURITIBA';
    UF_CAPITAL('MT') :='CUIABA';
    DBMS_OUTPUT.PUT_LINE(UF_CAPITAL('RS'));
    DBMS_OUTPUT.PUT_LINE(UF_CAPITAL('RJ'));
    DBMS_OUTPUT.PUT_LINE(UF_CAPITAL('PR'));
    DBMS_OUTPUT.PUT_LINE(UF_CAPITAL('MT'));
    
    
END;




DECLARE 
    TYPE NOME_VARRAY IS VARRAY(5) OF TALUNO.NOME%TYPE;
    NOME_VETOR NOME_VARRAY := NOME_VARRAY();
BEGIN
    NOME_VETOR.EXTEND;
    NOME_VETOR(1):= 'MARCIO';
    DBMS_OUTPUT.PUT_LINE(NOME_VETOR(1));
END;

