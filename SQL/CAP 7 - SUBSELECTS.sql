select ite.cod_contrato, ite.valor, ite.cod_curso,
       cur.cod_curso, cur.valor
from titem ite,
    ( select cod_curso, valor
    from tcurso where valor > 500)cur
    
where cur.cod_curso = ite.cod_curso;