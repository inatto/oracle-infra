CREATE INDEX ix_email_campaign_tenant
    ON email_campaign (tenant_code, status, created_at);

CREATE INDEX ix_address_tenant_entity
    ON address (tenant_code, entity_id, type);

CREATE INDEX ix_entity_tenant_cpf
    ON entity (tenant_code, br_cpf);

CREATE INDEX ix_processo_tenant_cpf
    ON processo_br (tenant_code, cpf);

CREATE INDEX ix_login_log_tenant_date
    ON login_log (tenant_code, created_at);

CREATE INDEX ix_content_tenant_list
    ON content (
                tenant_code,
                ctype_code,
                status,
                published_at
        );

CREATE INDEX ix_voting_detail_tenant
    ON voting_detail (
                      tenant_code,
                      voting_id,
                      is_active,
                      detail_order
        );

CREATE INDEX ix_import_log_tenant_date
    ON import_log (tenant_code, import_date);

CREATE INDEX ix_member_tenant_profile
    ON member (
               tenant_code,
               etype_code,
               active,
               id
        );

CREATE INDEX ix_tenant_domain_tenant
    ON tenant_domain (tenant_code, active);

CREATE INDEX ix_tenant_address_tenant
    ON tenant_address (
                       tenant_code,
                       active,
                       is_primary
        );

CREATE INDEX ix_workspace_job_tenant
    ON workspace_job (
                      tenant_code,
                      owner_entity_id,
                      status,
                      created_at
        );

CREATE INDEX ix_workspace_notification_tenant
    ON workspace_notification (
                               tenant_code,
                               entity_id,
                               read_at,
                               created_at
        );