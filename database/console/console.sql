ALTER TABLE workspace_note
    DROP CONSTRAINT ck_workspace_note_status;

ALTER TABLE workspace_note
    ADD CONSTRAINT ck_workspace_note_status
        CHECK (status IN ('ACTIVE', 'ARCHIVED', 'REMOVED', 'DELETED'));