ALTER TABLE member
    ADD (
        removed_at timestamp
        , removed_by number
        , removal_reason varchar2(500 char)
        );

ALTER TABLE member_application
    ADD (
        removed_at timestamp
        , removed_by number
        , removal_reason varchar2(500 char)
        );