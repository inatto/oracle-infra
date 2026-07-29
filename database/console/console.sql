DECLARE
    v_tenant_id tenant.id%TYPE;
    v_entity_id entity.id%TYPE;
    v_count     NUMBER;
BEGIN
    SELECT id
    INTO v_tenant_id
    FROM tenant
    WHERE code = 'asaclub';

    SELECT COUNT(*)
    INTO v_count
    FROM etype
    WHERE tenant_code = 'asaclub'
        AND code = 'admin'
        AND active = 1;

    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(
                -20001,
                'Perfil admin não cadastrado ou inativo no tenant asaclub.'
        );
    END IF;

    BEGIN
        SELECT id
        INTO v_entity_id
        FROM entity
        WHERE tenant_code = 'asaclub'
            AND br_cpf = '87429047149';

        UPDATE entity
        SET tenant_id   = v_tenant_id,
            name        = 'DANIEL',
            email       = 'dev@inatto.com',
            md5_password = LOWER(
                    RAWTOHEX(
                            STANDARD_HASH(
                                    UTL_I18N.STRING_TO_RAW('Asa?!1', 'AL32UTF8'),
                                    'MD5'
                            )
                    )
                           ),
            active      = 1,
            updated_at  = SYSDATE
        WHERE id = v_entity_id;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO entity (
                tenant_code,
                tenant_id,
                name,
                email,
                md5_password,
                br_cpf,
                active,
                created_at,
                updated_at,
                internal_tag
            )
            VALUES (
                'asaclub',
                v_tenant_id,
                'DANIEL',
                'dev@inatto.com',
                LOWER(
                        RAWTOHEX(
                                STANDARD_HASH(
                                        UTL_I18N.STRING_TO_RAW('Asa?!1', 'AL32UTF8'),
                                        'MD5'
                                )
                        )
                ),
                '87429047149',
                1,
                        SYSDATE,
                        SYSDATE,
                'manual-admin'
            )
            RETURNING id INTO v_entity_id;
    END;

    SELECT COUNT(*)
    INTO v_count
    FROM member
    WHERE tenant_code = 'asaclub'
        AND entity_id = v_entity_id
        AND etype_code = 'admin';

    IF v_count = 0 THEN
        INSERT INTO member (
            tenant_code,
            tenant_id,
            etype_code,
            entity_id,
            active,
            must_update,
            is_dev,
            created_at,
            updated_at,
            internal_tag
        )
        VALUES (
            'asaclub',
            v_tenant_id,
            'admin',
            v_entity_id,
            1,
            0,
            1,
                    SYSDATE,
                    SYSDATE,
            'manual-admin'
        );
    ELSE
        UPDATE member
        SET tenant_id  = v_tenant_id,
            active     = 1,
            must_update = 0,
            is_dev     = 1,
            removed_at = NULL,
            removed_by = NULL,
            removal_reason = NULL,
            updated_at = SYSDATE
        WHERE tenant_code = 'asaclub'
            AND entity_id = v_entity_id
            AND etype_code = 'admin';
    END IF;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
            'OK: administrador criado/atualizado. ENTITY_ID=' || v_entity_id
    );
END;
/