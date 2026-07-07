prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Cadastro'
,p_alias=>'CADASTRO'
,p_page_mode=>'MODAL'
,p_step_title=>'Cadastro de membro'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1617846258762673)
,p_plug_name=>'MEMBER Form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'MEMBER'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1816944390805651)
,p_plug_name=>'Hidden'
,p_parent_plug_id=>wwv_flow_imp.id(1617846258762673)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9655826844555271)
,p_plug_name=>'ENTITY Form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'ENTITY'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1221794439221348)
,p_plug_name=>'Hidden'
,p_parent_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9664108242555312)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_button_name=>'INSERT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'CHANGE'
,p_show_processing=>'Y'
,p_button_condition=>'P8_ENTITY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1620163370762696)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_button_name=>'UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'CHANGE'
,p_show_processing=>'Y'
,p_button_condition=>'P8_ENTITY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9663164673555308)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9663760977555310)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Excluir'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P8_MEMBER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1201167113805849)
,p_name=>'P8_ID_PESSOA_OLD'
,p_source_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1221794439221348)
,p_item_source_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_source=>'ID_PESSOA_OLD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_inline_help_text=>'P8_ID_PESSOA_OLD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1221891148221349)
,p_name=>'P8_ID_ENDERECO_RESIDENCIAL_OLD'
,p_source_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1221794439221348)
,p_item_source_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_source=>'ID_ENDERECO_RESIDENCIAL_OLD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_inline_help_text=>'P8_ID_ENDERECO_RESIDENCIAL_OLD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1221962308221350)
,p_name=>'P8_ID_ENDERECO_COMERCIAL_OLD'
,p_source_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1221794439221348)
,p_item_source_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_source=>'ID_ENDERECO_COMERCIAL_OLD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_inline_help_text=>'P8_ID_ENDERECO_COMERCIAL_OLD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1618043440762675)
,p_name=>'P8_MEMBER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1816944390805651)
,p_item_source_plug_id=>wwv_flow_imp.id(1617846258762673)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_inline_help_text=>'P8_MEMBER_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1618186421762676)
,p_name=>'P8_ID_MEMBRO_OLD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1816944390805651)
,p_item_source_plug_id=>wwv_flow_imp.id(1617846258762673)
,p_source=>'ID_MEMBRO_OLD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_inline_help_text=>'P8_ID_MEMBRO_OLD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1619302646762687)
,p_name=>'P8_MEMBER_ETYPE_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1816944390805651)
,p_item_source_plug_id=>wwv_flow_imp.id(1617846258762673)
,p_source=>'ETYPE_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_inline_help_text=>'P8_member_ETYPE_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1619422671762689)
,p_name=>'P8_MEMBER_ENTITY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1816944390805651)
,p_item_source_plug_id=>wwv_flow_imp.id(1617846258762673)
,p_source=>'ENTITY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_inline_help_text=>'P8_MEMBER_ENTITY_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1620254498762697)
,p_name=>'P8_CPF_MASK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_item_source_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_prompt=>'CPF'
,p_source=>'BR_CPF_MASK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>'P8_CPF'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'Y',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1816669732805648)
,p_name=>'P8_MEMBER_ID_PESSOA_OLD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1816944390805651)
,p_item_source_plug_id=>wwv_flow_imp.id(1617846258762673)
,p_source=>'ID_PESSOA_OLD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'P8_MEMBER_ID_PESSOA_OLD',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1816796693805649)
,p_name=>'P8_MEMBER_ID_PESSOA_EMPRESA_OLD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1816944390805651)
,p_item_source_plug_id=>wwv_flow_imp.id(1617846258762673)
,p_source=>'ID_PESSOA_EMPRESA_OLD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_inline_help_text=>'P8_MEMBER_ID_PESSOA_EMPRESA_OLD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9656174352555273)
,p_name=>'P8_ENTITY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1221794439221348)
,p_item_source_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_inline_help_text=>'P8_ENTITY_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9656581468555279)
,p_name=>'P8_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_item_source_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_prompt=>'Nome'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10054938637743904)
,p_name=>'P8_CPF'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_item_source_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_prompt=>'CPF'
,p_source=>'BR_CPF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_display_when=>'P8_CPF'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10055462539743909)
,p_name=>'P8_BR_MOBILE_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_item_source_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_prompt=>'Celular'
,p_source=>'BR_MOBILE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10057824838743933)
,p_name=>'P8_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_item_source_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_prompt=>'E-mail'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10057904282743934)
,p_name=>'P8_UF_RESIDENCIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_item_source_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_prompt=>'UF Residencial'
,p_source=>'HOME_UF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT code name, code FROM country_uf;'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10058044615743935)
,p_name=>'P8_BIRTH_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_item_source_plug_id=>wwv_flow_imp.id(9655826844555271)
,p_prompt=>'Nascimento'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'BIRTH_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10058161177743936)
,p_validation_name=>'P8_BIRTH_DATE'
,p_validation_sequence=>10
,p_validation=>'TO_DATE(:P8_BIRTH_DATE, ''DD/MM/YYYY'') <= TRUNC(SYSDATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Data de nascimento inv\00E1lida. N\00E3o pode ser maior que a atual.')
,p_associated_item=>wwv_flow_imp.id(10058044615743935)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1010106817471351)
,p_validation_name=>'P8_EMAIL'
,p_validation_sequence=>20
,p_validation=>'RETURN REGEXP_LIKE(:P8_EMAIL, ''^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'');'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('E-mail inv\00E1lido.')
,p_associated_item=>wwv_flow_imp.id(10057824838743933)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1761866698836748)
,p_validation_name=>'P8_CPF'
,p_validation_sequence=>30
,p_validation=>'RETURN is_cpf_valid(:P8_CPF);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('CPF inv\00E1lido.')
,p_associated_item=>wwv_flow_imp.id(10054938637743904)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(7887430499527870)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10055272819743907)
,p_name=>'page_load'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10055347399743908)
,p_event_id=>wwv_flow_imp.id(10055272819743907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'applyMasks();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1615837106762653)
,p_name=>'CANCEL'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9663164673555308)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1615925846762654)
,p_event_id=>wwv_flow_imp.id(1615837106762653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9665755363555318)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9655826844555271)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Entity DML (insert/update) se nao for Delete'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    --  se estiver DELETE ignora o DML',
'    IF :REQUEST = ''DELETE'' THEN',
'       return false;',
'    END IF;',
'',
'    return true;',
'',
'end;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_internal_uid=>9665755363555318
,p_process_comment=>unistr('Nao apaga fisicamente do banco, fica orf\00E3 de membro')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1619750340762692)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Member'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- noinspection SqlInsertValuesForFile',
'',
'DECLARE',
'--     ljson CLOB;',
'',
'BEGIN',
'',
'    --  DELETE',
'    IF :REQUEST = ''DELETE'' AND :P8_MEMBER_ID IS NOT NULL THEN',
'',
'        -- apaga http antes',
'--         ljson := json_member(:P8_MEMBER_ID, NULL, 1);',
'--         prc_http_member(ljson);',
'',
'        -- apaga banco',
'        DELETE FROM member WHERE id = :P8_MEMBER_ID;',
'',
'        -- INSERT',
'    ELSIF :P8_MEMBER_ID IS NULL THEN',
'',
'        -- insere membro antes',
'        INSERT INTO member (etype_code, entity_id)',
'        VALUES (:P8_MEMBER_ETYPE_CODE, :P8_ENTITY_ID)',
'        RETURNING id INTO :P8_MEMBER_ID;',
'',
'        -- atualiza http',
'--         ljson := json_member(:P8_MEMBER_ID);',
'--         prc_http_member(ljson);',
'',
'        -- UPDATE',
'--     ELSIF :P8_MEMBER_ID IS NOT NULL THEN',
'',
'        -- atualiza http',
'--         ljson := json_member(:P8_MEMBER_ID);',
'--         prc_http_member(ljson);',
'',
'    END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>15675642692453045
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23608984821527649)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Enviar email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --prc_http_mail(''Novo cadastro (Dia-a-Dia): '' || TO_CHAR(:P8_NAME), TO_CHAR(:P8_NAME));',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(7887430499527870)
,p_internal_uid=>37664877173218002
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10058717202743942)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10058717202743942
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9665325089555317)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(9655826844555271)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'ENTITY Form'
,p_internal_uid=>9665325089555317
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1618003748762674)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(1617846258762673)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'MEMBER Form'
,p_internal_uid=>15673896100453027
);
wwv_flow_imp.component_end;
end;
/
