CREATE OR REPLACE TRIGGER trg_etype_biu
    BEFORE INSERT OR UPDATE
    ON etype
    FOR EACH ROW
BEGIN
    :new.tenant_code := lower(:new.tenant_code);
    :new.code := lower(:new.code);
END;
/