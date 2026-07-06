CREATE OR REPLACE TRIGGER trg_tenant_permission_biu
    BEFORE INSERT OR UPDATE
    ON tenant_permission
    FOR EACH ROW
BEGIN
    :new.tenant_code := lower(:new.tenant_code);
    :new.page_alias := lower(:new.page_alias);
END;
/