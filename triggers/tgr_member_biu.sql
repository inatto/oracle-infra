CREATE OR REPLACE TRIGGER tgr_member_biu
    BEFORE INSERT OR UPDATE
    ON member
    FOR EACH ROW
BEGIN
    -- created_at só no insert
    IF INSERTING THEN
        IF :new.created_at IS NULL THEN
            :new.created_at := SYSDATE;
        END IF;
    END IF;

    -- updated_at sempre
    :new.updated_at := SYSDATE;

    -- normaliza tenant e etype
    IF :new.tenant_code IS NOT NULL THEN
        :new.tenant_code := lower(trim(:new.tenant_code));
    END IF;

    IF :new.etype_code IS NOT NULL THEN
        :new.etype_code := lower(trim(:new.etype_code));
    END IF;

    -- define tenant via APEX somente se não veio valor explícito
    IF :new.tenant_code IS NULL
       AND v('G_TENANT_CODE') IS NOT NULL THEN
        :new.tenant_code := lower(trim(v('G_TENANT_CODE')));
    END IF;

    -- pega id_pessoa_old da entity relacionada
    IF :new.entity_id IS NOT NULL THEN
        BEGIN
            SELECT id_pessoa_old
            INTO :new.id_pessoa_old
            FROM entity
            WHERE id = :new.entity_id;
        EXCEPTION
            WHEN no_data_found THEN
                NULL;
        END;
    END IF;
END;
/