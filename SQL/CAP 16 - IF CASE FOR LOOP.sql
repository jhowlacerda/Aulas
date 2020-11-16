set serveroutput on;
DECLARE
    vNome VARCHAR(30) := 'Outros';
    vCidade VARCHAR(30);
    vEstado VARCHAR(2) ;
BEGIN
    IF(vNome = 'Gaucho') THEN
        vCidade := 'Porto Alegre';
        vEstado := 'RS';
    ELSIF (vNome = 'Carioca') THEN
        vCidade := 'Rio de Janeiro';
        vEstado := 'RJ';
    ELSE
     IF(vEstado = 'SP') THEN
        vCidade := 'Paulista';
     ELSE
        vCidade := 'Outros';
        vEstado := 'XX';
     END IF;
    END IF;
    DBMS_OUTPUT.PUT_LINE(vCidade||' - '||vEstado);
END;







set serveroutput on;
DECLARE
    vEstado VARCHAR(2) := 'RJ';
    vNome VARCHAR(30) ; 
BEGIN
   CASE
    WHEN vEstado = 'RS' THEN vNome := 'Gaucho';
    WHEN vEstado = 'RJ' OR vEstado = 'ES' THEN vNome := 'Carioca';
   ELSE
    vNome := 'Outros';
   END CASE;
    DBMS_OUTPUT.PUT_LINE('Apelido: '||vNome);
END;



set serveroutput on;
DECLARE
    vContador Integer := 0;
BEGIN
   LOOP
    vContador := vContador + 1;
    DBMS_OUTPUT.PUT_LINE(vContador);
    EXIT WHEN vContador = 10;
   END LOOP;
    DBMS_OUTPUT.PUT_LINE('Fim do LOOP');
END;



set serveroutput on;
DECLARE
    vContador Integer;
BEGIN
    FOR vContador in 1..10
   LOOP
  --  vContador := vContador + 1;
    DBMS_OUTPUT.PUT_LINE('FOR LOOP: '|| vContador);
    --EXIT WHEN vContador = 10;
   END LOOP;
   -- DBMS_OUTPUT.PUT_LINE('Fim do LOOP');
END;



set serveroutput on;
DECLARE
    vContador Integer := 0;
    vTexto VARCHAR(10);
BEGIN
    WHILE vContador <6
   LOOP
    vContador := vContador + 1;
    IF(vContador MOD 2) = 0 THEN
        vTexto := 'PAR';
    ELSE
        vTexto := 'Impar';
    END IF;
    DBMS_OUTPUT.PUT_LINE(vContador||' -> ' ||vTexto);
    --EXIT WHEN vContador = 10;
   END LOOP;
   -- DBMS_OUTPUT.PUT_LINE('Fim do LOOP');
END;