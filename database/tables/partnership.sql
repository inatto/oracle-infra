DROP TABLE partnership;
CREATE TABLE partnership (
    tenant_code VARCHAR2(50) NOT NULL,
    parent_code VARCHAR2(50) NOT NULL,
    role        VARCHAR2(50) CHECK (role IN ('partner', 'client')),


    CONSTRAINT pk_partnership PRIMARY KEY (tenant_code, parent_code),
    CONSTRAINT fk_partnership_tenant FOREIGN KEY (tenant_code) REFERENCES tenant(code),
    CONSTRAINT fk_partnership_parent FOREIGN KEY (parent_code) REFERENCES tenant(code),
    CONSTRAINT chk_partnership_not_self CHECK (tenant_code != parent_code)
);

--
INSERT INTO partnership (tenant_code, parent_code, role)
SELECT code, 'ASACLUB', 'partner'
FROM tenant
WHERE 1 = 1
    AND code != 'INFRAMERICA'
    AND code != 'ASACLUB'
    AND code != 'INATTO'
    AND code != 'SINDICATTO';
-- opcional, evita laço

--
SELECT * FROM partnership ORDER BY parent_code, tenant_code;