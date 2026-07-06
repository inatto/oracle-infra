-- noinspection SqlInsertValuesForFile

DECLARE
    --     ljson CLOB;

BEGIN

    --  DELETE
    IF :REQUEST = 'DELETE' AND :P26_MEMBER_ID IS NOT NULL THEN
        -- apaga http antes
        --         ljson := json_member(:P26_MEMBER_ID, NULL, 1);
        --         prc_http_member(ljson);

        -- apaga banco
        DELETE FROM member WHERE id = :P26_MEMBER_ID;

        -- INSERT
    ELSIF :P26_MEMBER_ID IS NULL THEN

        -- insere membro antes
        INSERT INTO member (tenant_code, etype_code, entity_id)
        VALUES (:P26_MEMBER_TENANT_CODE, :P26_MEMBER_ETYPE_CODE, :P26_ENTITY_ID)
        RETURNING id INTO :P26_MEMBER_ID;

        -- atualiza http
        --         ljson := json_member(:P26_MEMBER_ID);
        --         prc_http_member(ljson);

        -- UPDATE
    ELSIF :P26_MEMBER_ID IS NOT NULL THEN

        --
        UPDATE member
        SET tenant_code = :P26_MEMBER_TENANT_CODE, etype_code = :P26_MEMBER_ETYPE_CODE, entity_id = :P26_MEMBER_ENTITY_ID
        WHERE id = :P26_MEMBER_ID;

        -- atualiza http
        --         ljson := json_member(:P26_MEMBER_ID);
        --         prc_http_member(ljson);

    END IF;

END;