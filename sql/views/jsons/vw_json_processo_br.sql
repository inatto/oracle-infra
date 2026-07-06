CREATE OR REPLACE VIEW vw_json_processo_br AS
SELECT DISTINCT *


FROM vw_processo_br_grouped
WHERE 1 = 1
    -- TODO 20250721 corrigir nao roda na API ORDS, nao remover comentario ate resolver
    --     AND (LOWER(tenant_code) = LOWER(v('G_TENANT_CODE')) OR SYS_CONTEXT('USERENV', 'MODULE') = 'DataGrip')
--     AND ROWNUM <= 1
/

SELECT * FROM vw_json_processo_br
/
