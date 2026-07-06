/*
CREATE OR REPLACE TRIGGER tg_entity_au
    AFTER UPDATE
    ON entity
    FOR EACH ROW

DECLARE
    temp NUMBER;
BEGIN

    -- se atualizando nao pode existir outro cpf igual
    IF :new.br_cpf IS NOT NULL THEN
        SELECT 1
        INTO temp
        FROM entity
        WHERE 1 = 1
          and tenant_code = v('G_TENANT_CODE')
          AND id != :new.id
          AND br_cpf = :new.br_cpf
        FETCH FIRST 1 ROW ONLY;
        RAISE_APPLICATION_ERROR(-20001, 'CPF ja cadastrado.');
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL; -- tudo certo, cpf ainda não existe
END;
/
*/
