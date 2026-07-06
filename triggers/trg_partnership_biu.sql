CREATE OR REPLACE TRIGGER trg_partnership_biu
    BEFORE INSERT OR UPDATE
    ON partnership
    FOR EACH ROW
BEGIN
    :new.tenant_code := lower(trim(:new.tenant_code));
    :new.parent_code := lower(trim(:new.parent_code));
END;
/