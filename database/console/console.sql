MERGE INTO tenant_branding tb
USING
    (
        SELECT
            'anpprev' AS tenant_code,
            '/images/anpprev_bright_mode.png' AS logo_light_url,
            '/images/anpprev_dark_mode.png' AS logo_dark_url,
            '/images/anpprev_420px.png' AS logo_fallback_url,
            CAST(NULL AS VARCHAR2(2000)) AS favicon_url
        FROM dual
    ) s
ON
    (
        tb.tenant_code = s.tenant_code
        )
WHEN MATCHED THEN UPDATE SET
    tb.logo_light_url = s.logo_light_url,
    tb.logo_dark_url = s.logo_dark_url,
    tb.logo_fallback_url = s.logo_fallback_url,
    tb.favicon_url = s.favicon_url,
    tb.updated_at = SYSDATE
WHEN NOT MATCHED THEN INSERT
                      (
                          tenant_code,
                          logo_light_url,
                          logo_dark_url,
                          logo_fallback_url,
                          favicon_url
                      )
                      VALUES
                          (
                              s.tenant_code,
                              s.logo_light_url,
                              s.logo_dark_url,
                              s.logo_fallback_url,
                              s.favicon_url
                          );

COMMIT;