INSERT INTO menu_item (
    id,
    parent_id,
    sort_order,
    label,
    image,
    page_alias,
    target_etype_code,
    active
)
SELECT
    e.list_entry_id,
    e.list_entry_parent_id,
    NVL(e.display_sequence, 0),
    e.entry_text,
    e.entry_image,

    LOWER(
            COALESCE(
                    NULLIF(TRIM(e.entry_attribute_01), ''),
                    REGEXP_SUBSTR(
                            e.condition_expression1,
                            'p_page_alias[[:space:]]*=>[[:space:]]*''([^'']+)''',
                            1, 1, 'i', 1
                    ),
                    p.page_alias,
                    REGEXP_SUBSTR(
                            e.condition_expression1,
                            'list-entry-[a-z0-9_-]+',
                            1, 1, 'i'
                    )
            )
    ),

    LOWER(
            REGEXP_SUBSTR(
                    e.condition_expression1,
                    'p_target_etype_code[[:space:]]*=>[[:space:]]*''([^'']+)''',
                    1, 1, 'i', 1
            )
    ),

    CASE
        WHEN UPPER(NVL(e.condition_type_code, '')) = 'NEVER'
            OR LOWER(NVL(e.build_option, '')) = 'commented out'
            THEN 0
        ELSE 1
        END

FROM apex_application_list_entries e

LEFT JOIN apex_application_pages p
          ON p.application_id = e.application_id
              AND p.page_id = TO_NUMBER(
                      REGEXP_SUBSTR(
                              e.entry_target,
                              'f\?p=[^:]*:([0-9]+)',
                              1, 1, 'i', 1
                      )
                              )

WHERE e.application_id = 100
    AND e.list_name = 'Navigation Menu'

ORDER BY
    e.display_sequence,
    e.list_entry_id;