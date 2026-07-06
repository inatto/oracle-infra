CREATE OR REPLACE TRIGGER tg_entity_biu
    BEFORE INSERT OR UPDATE
    ON entity
    FOR EACH ROW
DECLARE
    temp NUMBER;
BEGIN

    -- define tenant
    IF INSERTING AND v('G_TENANT_ID') IS NOT NULL THEN :new.tenant_id := v('G_TENANT_ID');
    END IF;
    IF INSERTING AND v('G_TENANT_CODE') IS NOT NULL THEN :new.tenant_code := v('G_TENANT_CODE');
    END IF;

    -- padrao  nome
    :new.name := UPPER(:new.name);

    -- limpa campos
    :new.br_cpf := only_numbers(:new.br_cpf);
    :new.br_mobile := only_numbers(:new.br_mobile);

    -- hash
    --     SELECT standard_hash(:new.br_cpf || '2025', 'SHA256') INTO :new.br_cpf_hash FROM dual;
    --     SELECT standard_hash(:new.email || '2025', 'SHA256') INTO :new.email_hash FROM dual;

    -- se inserindo nao pode existir outro cpf igual
    IF INSERTING AND :new.br_cpf IS NOT NULL THEN
        SELECT 1 INTO temp FROM entity WHERE br_cpf = :new.br_cpf AND tenant_id = :new.tenant_id FETCH FIRST 1 ROW ONLY;
        RAISE_APPLICATION_ERROR(-20001, 'CPF já cadastrado.');
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL; -- tudo certo, cpf ainda não existe
END;
/

