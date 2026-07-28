CREATE UNIQUE INDEX uk_entity_tenant_cnpj_except_asaclub
    ON entity (
               CASE
                   WHEN tenant_code <> 'asaclub'
                           AND br_cnpj IS NOT NULL
                       THEN tenant_code
                   END,
               CASE
                   WHEN tenant_code <> 'asaclub'
                           AND br_cnpj IS NOT NULL
                       THEN br_cnpj
                   END
        );