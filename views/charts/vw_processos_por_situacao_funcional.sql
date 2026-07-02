-- noinspection SqlShadowingAliasForFile

CREATE OR REPLACE VIEW vw_processos_por_situacao_funcional AS
SELECT COUNT(*) total
    , NVL(situacao_funcional, '[INDEFINIDO]') situacao_funcional

FROM (SELECT DISTINCT cpf, situacao_funcional
FROM vw_processo_br)
WHERE 1 = 1
GROUP BY situacao_funcional
ORDER BY total DESC
/

SELECT * FROM vw_processos_por_situacao_funcional
/

