-- DROP TABLE etype_permission;

-- 20260704-2204
CREATE TABLE etype_permission
(
    id           number GENERATED AS IDENTITY PRIMARY KEY,
    tenant_code  varchar2(50)                   NOT NULL,
    etype_code   varchar2(50)                   NOT NULL,
    page_alias   varchar2(100)                  NOT NULL,
    action_code  varchar2(50)                   NOT NULL,
    requires_dev number(1) DEFAULT 0            NOT NULL,
    active       number(1) DEFAULT 1          NOT NULL CHECK (active IN (0, 1)),
    created_at   timestamp DEFAULT systimestamp NOT NULL,

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