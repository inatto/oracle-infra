CREATE OR REPLACE TRIGGER tg_member_bi
    BEFORE INSERT
    ON member
    FOR EACH ROW
DECLARE
--     temp NUMBER;
BEGIN

    -- created_at
    IF :new.created_at IS NULL THEN
        :new.created_at := SYSDATE;
    END IF;

    -- define tenant
    IF v('G_TENANT_CODE') IS NOT NULL THEN
        :new.tenant_code := v('G_TENANT_CODE');
    END IF;

    -- pega id_pessoa_old da entity relacionada, se houver e passa para o member
    IF :new.entity_id IS NOT NULL THEN
        SELECT id_pessoa_old
          INTO :new.id_pessoa_old
          FROM entity
         WHERE id = :new.entity_id;
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL; -- tudo certo, cpf ainda não existe
END;
/

