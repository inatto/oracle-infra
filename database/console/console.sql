BEGIN
    EXECUTE IMMEDIATE '
    ALTER TABLE email_campaign
        DROP CONSTRAINT uk_email_campaign_stats
    ';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -2443 THEN
            RAISE;
        END IF;
END;
/