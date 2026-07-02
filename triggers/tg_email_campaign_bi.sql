CREATE OR REPLACE TRIGGER tg_email_campaign_bi
    BEFORE INSERT
    ON email_campaign
    FOR EACH ROW

BEGIN

    --
    :new.tenant_id := v('G_TENANT_ID');
    :new.tenant_code := v('G_TENANT_CODE');

END;
/