CREATE OR REPLACE TRIGGER trg_etype_permission_biu
    BEFORE INSERT OR UPDATE
    ON etype_permission
    FOR EACH ROW
BEGIN
    :new.tenant_code := lower(:new.tenant_code);
    :new.etype_code := lower(:new.etype_code);
    :new.page_alias := lower(:new.page_alias);
    :new.action_code := lower(:new.action_code);

    BEGIN
        INSERT INTO tenant_permission (
            tenant_code,
            page_alias
        )
        VALUES (
            :new.tenant_code,
            :new.page_alias
        );

    EXCEPTION
        WHEN dup_val_on_index THEN
            NULL;
    END;
END;
/