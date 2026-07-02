CREATE OR REPLACE TRIGGER tg_ticket_bi
    BEFORE INSERT
    ON ticket
    FOR EACH ROW
BEGIN

    -- TODO:
    -- Resolver tenant real quando a API tiver autenticação/sessão.
    -- No APEX vinha de v('G_TENANT_ID') e v('G_TENANT_CODE').
    -- Pela API Python/FastAPI, esses valores não existem na sessão Oracle.

    :new.tenant_id := nvl(v('G_TENANT_ID'), :new.tenant_id);
    :new.tenant_code := nvl(v('G_TENANT_CODE'), :new.tenant_code);

    -- TODO provisório:
    -- Enquanto não houver controle real de tenant na API,
    -- força o tenant padrão para evitar ORA-01400.
    if :new.tenant_code is null then
        :new.tenant_code := 'SINDICATTO';
    end if;

END;
/