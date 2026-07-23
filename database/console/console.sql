/* ============================================================
   SINPROPREV — DADOS RESTANTES

   Pressupõe que TENANT_INFO já foi inserido.

   Inclui:
   - TENANT_DOMAIN
   - TENANT_CONTACT
   - TENANT_ADDRESS
   - TENANT_SOCIAL
   - TENANT_BRANDING

   Os contatos, endereço e redes sociais do SINPROPREV
   permanecem vazios porque não havia valores reais no código.
   ============================================================ */


/* ============================================================
   1. DOMÍNIOS
   ============================================================ */

MERGE INTO tenant_domain td
USING
    (
        SELECT 'sinproprev' AS tenant_code, 'sinproprev.localhost' AS domain
        FROM dual

        UNION ALL

        SELECT 'sinproprev', 'sinproprev.org.br'
        FROM dual

        UNION ALL

        SELECT 'sinproprev', 'www.sinproprev.org.br'
        FROM dual

        UNION ALL

        SELECT 'sinproprev', 'sinproprev.org'
        FROM dual

        UNION ALL

        SELECT 'sinproprev', 'www.sinproprev.org'
        FROM dual
    ) s
ON
    (
        LOWER(td.domain) = LOWER(s.domain)
        )
WHEN MATCHED THEN
    UPDATE SET
        td.tenant_code = s.tenant_code,
        td.active = 1,
        td.updated_at = SYSDATE
WHEN NOT MATCHED THEN
    INSERT
    (
        tenant_code,
        domain,
        active
    )
    VALUES
        (
            s.tenant_code,
            LOWER(s.domain),
            1
        );


/* ============================================================
   2. CONTATOS

   Nenhum contato real estava configurado para o SINPROPREV.
   Por isso, nenhuma linha é criada em TENANT_CONTACT.
   ============================================================ */


/* ============================================================
   3. ENDEREÇO

   Nenhum endereço real estava configurado para o SINPROPREV.
   Por isso, nenhuma linha é criada em TENANT_ADDRESS.
   ============================================================ */


/* ============================================================
   4. REDES SOCIAIS

   Nenhuma rede social real estava configurada para o SINPROPREV.
   Por isso, nenhuma linha é criada em TENANT_SOCIAL.
   ============================================================ */


/* ============================================================
   5. BRANDING
   ============================================================ */

MERGE INTO tenant_branding tb
USING
    (
        SELECT
            'sinproprev' AS tenant_code,
            '/images/sinproprev_logo_420px.png'
                AS logo_light_url,
            '/images/sinproprev_logo_420px_dark_mode.png'
                AS logo_dark_url,
            '/images/sinproprev.png'
                AS logo_fallback_url,
            CAST(NULL AS VARCHAR2(2000))
                AS favicon_url
        FROM dual
    ) s
ON
    (
        tb.tenant_code = s.tenant_code
        )
WHEN MATCHED THEN
    UPDATE SET
        tb.logo_light_url = s.logo_light_url,
        tb.logo_dark_url = s.logo_dark_url,
        tb.logo_fallback_url = s.logo_fallback_url,
        tb.favicon_url = s.favicon_url,
        tb.updated_at = SYSDATE
WHEN NOT MATCHED THEN
    INSERT
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


/* ============================================================
   CONFERÊNCIA
   ============================================================ */

SELECT
    tenant_code,
    domain,
    active
FROM tenant_domain
WHERE tenant_code = 'sinproprev'
ORDER BY domain;


SELECT
    tenant_code,
    contact_type,
    contact_value,
    label,
    is_primary,
    sort_order,
    active
FROM tenant_contact
WHERE tenant_code = 'sinproprev'
ORDER BY sort_order, contact_type;


SELECT
    tenant_code,
    address_type,
    address_line,
    city,
    state_code,
    postal_code,
    country_code,
    is_primary,
    active
FROM tenant_address
WHERE tenant_code = 'sinproprev'
ORDER BY is_primary DESC, id;


SELECT
    tenant_code,
    platform,
    profile_url,
    sort_order,
    active
FROM tenant_social
WHERE tenant_code = 'sinproprev'
ORDER BY sort_order, platform;


SELECT
    tenant_code,
    logo_light_url,
    logo_dark_url,
    logo_fallback_url,
    favicon_url
FROM tenant_branding
WHERE tenant_code = 'sinproprev';