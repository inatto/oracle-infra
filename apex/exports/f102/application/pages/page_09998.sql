prompt --application/pages/page_09998
begin
--   Manifest
--     PAGE: 09998
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
 p_id=>9998
,p_name=>'Escolher perfil'
,p_alias=>'ESCOLHER-PERFIL'
,p_step_title=>'Escolher perfil'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25409493597022813)
,p_plug_name=>'Login'
,p_title=>'Escolha o Perfil'
,p_region_template_options=>'#DEFAULT#:t-Login-region--headerTitle js-removeLandmark'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_location=>null
,p_region_image=>'https://sindicatto.sindicattox.workers.dev/brand/&P9998_TNTCD_LOWER_HIDDEN.-400w.png'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3459985915804583)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(25409493597022813)
,p_button_name=>'Continuar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Continuar'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3453176974645155)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(25409493597022813)
,p_button_name=>'Cancelar'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancelar'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'&LOGOUT_URL.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3453766887645161)
,p_branch_name=>'Go To Page 9999 - If G_ENTITY_ID is null'
,p_branch_action=>'&LOGOUT_URL.'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'BRANCH_TO_URL_IDENT_BY_ITEM'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'G_ENTITY_ID'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3456189078645185)
,p_branch_name=>'Go To Page 1 - If only one type'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'    v_etype_code VARCHAR2(100);',
'',
'BEGIN',
'',
'    -- se tem apenas um, retorna o type',
'    v_etype_code := members_etypes_count(:G_TENANT_CODE, :G_USERNAME, :G_PASSWORD);',
'',
'    -- e se tiver, ja loga',
'    IF v_etype_code IS NOT NULL THEN',
'        prc_internal_login(:G_TENANT_CODE, :G_USERNAME, :G_PASSWORD, v_etype_code, :G_ENTITY_ID);',
'        return true;',
'    END IF;',
'',
'END;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3452983981645153)
,p_name=>'P9998_ETYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25409493597022813)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Perfil'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct etype_name, etype_code',
'FROM vw_member',
'WHERE 1 = 1',
'    AND active = 1',
'    AND LOWER(tenant_code) = LOWER(:G_TENANT_CODE)',
'    AND entity_id = :G_ENTITY_ID',
';',
'',
'',
''))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3522836221682284)
,p_name=>'P9998_TNTCD_LOWER_HIDDEN'
,p_item_sequence=>20
,p_item_default=>'LOWER(:G_TENANT_CODE)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3456216476645186)
,p_name=>'P9998_ETYPE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9998_ETYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3456349940645187)
,p_event_id=>wwv_flow_imp.id(3456216476645186)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'Continuar'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3454633294645170)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Tenta login completo e redireciona'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    --',
'    prc_internal_login(:G_TENANT_CODE, :G_USERNAME, :G_PASSWORD, :P9998_ETYPE, :G_ENTITY_ID);',
'',
unistr('    -- redireciona manualmente e garante sess\00E3o setada'),
'    apex_util.redirect_url(''f?p='' || v(''APP_ID'') || '':1:'' || v(''APP_SESSION''));',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>17510525646335523
);
wwv_flow_imp.component_end;
end;
/
