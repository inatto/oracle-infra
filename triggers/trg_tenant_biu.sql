CREATE OR REPLACE TRIGGER trg_tenant_biu
    BEFORE INSERT OR UPDATE
    ON tenant
    FOR EACH ROW
BEGIN
    :new.code := lower(trim(:new.code));
END;
/