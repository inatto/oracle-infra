--DROP TABLE etype_permission;

-- 20260704-2204
CREATE TABLE etype_permission
(
    id           number GENERATED AS IDENTITY PRIMARY KEY,
    tenant_code  varchar2(50)                   NOT NULL,
    etype_code   varchar2(50)                   NOT NULL,
    page_alias   varchar2(100)                  NOT NULL,
    action_code  varchar2(50)                   NOT NULL,
    requires_dev number(1) DEFAULT 0            NOT NULL,
    active       char(1)   DEFAULT 'Y'          NOT NULL,
    created_at   timestamp DEFAULT systimestamp NOT NULL,

    CONSTRAINT ck_etype_permission_active CHECK (active IN ('Y', 'N')),
    CONSTRAINT ck_etype_permission_requires_dev CHECK (requires_dev IN (0, 1)),
    CONSTRAINT uq_etype_permission
        UNIQUE (
                tenant_code,
                etype_code,
                page_alias,
                action_code,
                requires_dev
            ),

    CONSTRAINT fk_etype_permission_tenant_permission
        FOREIGN KEY (tenant_code, page_alias)
            REFERENCES wksp_sindicatto.tenant_permission (tenant_code, page_alias)
)
/

SELECT * FROM etype_permission;



INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'cancel', 'vouchers', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'edit', 'all_members', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'edit', 'associates', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'edit', 'email_campaigns', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'edit', 'members', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'edit', 'tickets', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'is', 'admin', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'is', 'dev', 1);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'see', 'all_members', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'see', 'associates', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'see', 'charts', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'see', 'clients', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'see', 'email_campaigns', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'see', 'members', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'admin', 'see', 'tickets', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'marketing', 'edit', 'email_campaigns', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'marketing', 'see', 'email_campaigns', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'staff', 'edit', 'associates', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'staff', 'edit', 'members', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'staff', 'edit', 'tickets', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'staff', 'see', 'associates', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'staff', 'see', 'members', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'staff', 'see', 'tickets', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'staff_view', 'see', 'associates', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'staff_view', 'see', 'members', 0);
INSERT INTO WKSP_SINDICATTO.ETYPE_PERMISSION (TENANT_CODE, ETYPE_CODE, ACTION_CODE, PAGE_ALIAS, REQUIRES_DEV) VALUES ('sinproprev', 'staff_view', 'see', 'tickets', 0);

COMMIT;
