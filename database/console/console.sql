ALTER TABLE workspace_note ADD (
    scope_type VARCHAR2(20) DEFAULT 'global' NOT NULL,
    scope_key  VARCHAR2(200)
    );

ALTER TABLE workspace_note ADD CONSTRAINT ck_workspace_note_scope
    CHECK (scope_type IN ('global', 'page'));