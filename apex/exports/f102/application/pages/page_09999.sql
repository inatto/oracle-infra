prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.17'
,p_default_workspace_id=>7854223160412629
,p_default_application_id=>100
,p_default_id_offset=>14055892351690353
,p_default_owner=>'WKSP_SINDICATTO'
);
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'core - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7894257955527902)
,p_plug_name=>'Login'
,p_title=>' '
,p_region_template_options=>'#DEFAULT#:t-Login-region--headerIcon'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_location=>null
,p_region_image=>'https://sindicatto.sindicattox.workers.dev/brand/&P9999_TNTCD_LOWER_HIDDEN.-400w.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7895954469527909)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7894257955527902)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Entrar'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4861064032350)
,p_name=>'ENTHS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7894257955527902)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3455965511645183)
,p_name=>'P9999_TNTCD_LOWER_HIDDEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7894257955527902)
,p_item_default=>'LOWER(:G_TENANT_CODE)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7877020898520602)
,p_name=>'TNTCD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7894257955527902)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7894750931527905)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7894257955527902)
,p_prompt=>unistr('Usu\00E1rio')
,p_placeholder=>unistr('Usu\00E1rio')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_display_when=>'ENTHS'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7895145120527906)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7894257955527902)
,p_item_default=>'123456'
,p_prompt=>'Senha'
,p_placeholder=>'Senha'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_display_when=>'ENTHS'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7895564376527907)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7894257955527902)
,p_prompt=>unistr('Lembrar usu\00E1rio')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'ENTHS'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7898129237527915)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7898129237527915
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7898625243527917)
,p_page_process_id=>wwv_flow_imp.id(7898129237527915)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7899198629527918)
,p_page_process_id=>wwv_flow_imp.id(7898129237527915)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3452532955645149)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login membro usuario senha'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    --',
'    prc_internal_login(:G_TENANT_CODE, :P9999_USERNAME, :P9999_PASSWORD, null, :G_ENTITY_ID);',
'',
'    -- passa para sessao, para usar na selecao do perfil',
'    :G_USERNAME := :P9999_USERNAME;',
'    :G_PASSWORD := :P9999_PASSWORD;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>17508425307335502
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7896201846527910)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7896201846527910
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7896709465527911)
,p_page_process_id=>wwv_flow_imp.id(7896201846527910)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'STATIC'
,p_value=>'SINDICATTO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7897296302527913)
,p_page_process_id=>wwv_flow_imp.id(7896201846527910)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'STATIC'
,p_value=>'20bqns_AX'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7897794824527914)
,p_page_process_id=>wwv_flow_imp.id(7896201846527910)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7900031598527921)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7900031598527921
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3453238583645156)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Session'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    :G_USERNAME := NULL;',
'    :G_PASSWORD := NULL;',
'    :G_MEMBER_ID := NULL;',
'    :G_ENTITY_ID := NULL;',
'    :G_ENTITY_NAME := NULL;',
'    :G_ETYPE_NAME := NULL;',
'    :G_ETYPE_CODE := NULL;',
'    ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17509130935335509
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10397291148592715)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Tenant Set'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    -- TODO 20260705-2144 - Separar tenant de loginauto hash (e login auto com id membro??)',
'    prc_set_tenant(:TNTCD, :ENTHS);',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10397291148592715
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8538576253759702)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login auto if Entity Hash'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_process_when=>'ENTHS'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>8538576253759702
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8538696482759703)
,p_page_process_id=>wwv_flow_imp.id(8538576253759702)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'STATIC'
,p_value=>'SINDICATTO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8538760442759704)
,p_page_process_id=>wwv_flow_imp.id(8538576253759702)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'20bqns_AX'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8538818055759705)
,p_page_process_id=>wwv_flow_imp.id(8538576253759702)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>30
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7899672164527920)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7899672164527920
);
wwv_flow_imp.component_end;
end;
/
