CREATE OR REPLACE TRIGGER tg_content_biu
    BEFORE INSERT OR UPDATE
    ON content
    FOR EACH ROW
BEGIN

    -- define tenant
    IF INSERTING AND v('G_TENANT_CODE') IS NOT NULL THEN
        :new.tenant_code := v('G_TENANT_CODE');
    END IF;

    -- define timestamps
    IF INSERTING THEN
        :new.created_at := cast(systimestamp AT TIME ZONE 'America/Sao_Paulo' AS date);
    ELSE
        :new.updated_at := cast(systimestamp AT TIME ZONE 'America/Sao_Paulo' AS date);
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL; -- tudo certo, cpf ainda não existe
END;
/