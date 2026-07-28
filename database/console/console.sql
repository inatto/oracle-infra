SELECT tenant_code
    , setting_key
    , setting_value
    , active
FROM tenant_setting
WHERE tenant_code = 'sinproprev'
    AND setting_key = 'ui.footer_variant';