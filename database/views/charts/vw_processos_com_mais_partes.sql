-- noinspection SqlShadowingAliasForFile

CREATE OR REPLACE VIEW vw_processos_com_mais_partes AS
SELECT DISTINCT nr_processo, partes_cpf
FROM vw_processo_br_grouped
WHERE 1 = 1
    AND partes_cpf > 1
ORDER BY partes_cpf DESC;

--
SELECT * FROM vw_processos_com_mais_partes
;