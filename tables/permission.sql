-- TODO 20250714 DEPRECATED
DROP TABLE permission CASCADE CONSTRAINTS;
-- TODO 20250712 rever utilizacao, talvez nao seja mais necessario
/*
CREATE TABLE permission (
    id          NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    tenant_code VARCHAR2(50) NOT NULL, -- Ex: 'SINDICATTO', 'ASACLUB'
    etype_code  VARCHAR2(20) NOT NULL
);


INSERT INTO permission (tenant_code, etype_code) VALUES ('ASACLUB', '*');
--
BEGIN
    FOR tenant_rec IN (SELECT code FROM tenant WHERE id_master = 27600000)
    LOOP
        FOR etype_rec IN (SELECT code FROM etype WHERE code IN ('staff', 'associate', 'dependent', 'staff_view'))
        LOOP
            INSERT INTO permission (tenant_code, etype_code) VALUES (tenant_rec.code, etype_rec.code);
        END LOOP;
    END LOOP;
END;

SELECT * FROM permission;
*/
