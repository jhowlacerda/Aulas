set serveroutput on;

DECLARE
    x INTEGER;
    y INTEGER;
    c INTEGER;
BEGIN
    x:= 10;
    y:= 20;
    c:= x + y;
    Dbms_Output.Put_Line('Resultado: ' || c);
    DBMS_OUTPUT.PUT_LINE('');
END;




DECLARE
    VDESCONTO NUMBER(6,2):=0.50;
    VCIDADE VARCHAR(30):= 'NOVO HAMBURGO';
    VCOD_ALUNO taluno.cod_aluno%TYPE :=5;
    VTOTAL NUMBER(8,2):=1345.89;
BEGIN
    VTOTAL := Round(VTOTAL * VDESCONTO, 2);
    DBMS_OUTPUT.put_line('Total: '|| vTotal);
    VDESCONTO := 1.20;
    VCIDADE := InitCap(VCIDADE);
    DBMS_OUTPUT.PUT_LINE('Cidade: '||VCIDADE);
    DBMS_OUTPUT.PUT_LINE('Desconto: '|| VDESCONTO);
    DBMS_OUTPUT.PUT_LINE('Aluno: '|| VCOD_ALUNO);
END;


DECLARE
    VPRECO1 NUMBER(8,2):=10;
    VPRECO2 NUMBER(8,2):=20;
    VFLAG BOOLEAN;
BEGIN
    VFLAG := (VPRECO1>VPRECO2);
    IF (VFLAG=TRUE) THEN
        DBMS_OUTPUT.PUT_LINE('VERDADEIRO');
    ELSE
        DBMS_OUTPUT.PUT_LINE('FALSO');
    END IF;
    IF (VPRECO1>VPRECO2)THEN
        DBMS_OUTPUT.PUT_LINE('VPRECO1 � MAIOR');
    ELSE
        DBMS_OUTPUT.PUT_LINE('VPRECO2 � MAIOR');
    END IF;
END;

--BIND VARIABLE


VARIABLE VDESCONTO2 NUMBER

DECLARE
    VCOD_ALUNO NUMBER := 1;
BEGIN
    :VDESCONTO2 := 0.90;
    DBMS_Output.Put_Line('DESCONTO 2: '|| :VDESCONTO2);
    
    UPDATE TCONTRATO SET
    TOTAL = TOTAL * :VDESCONTO2
    WHERE COD_ALUNO = VCOD_ALUNO;
END;
 
 
--ANINHAMENTO

DECLARE
   VTESTE VARCHAR(10):= 'JOSE';
BEGIN
   
   DECLARE
         VTESTE VARCHAR(10):= 'PEDRO';
   BEGIN
        DBMS_Output.Put_Line('BLOCO INTERNO '||VTESTE);
   END;
   
   DBMS_Output.Put_Line('BLOCO EXTERNO '||VTESTE);
END;


