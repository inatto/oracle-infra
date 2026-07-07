prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_name=>'Cadastro de Membro (Admin)'
,p_alias=>'CADASTRO-DE-MEMBRO-ADMIN'
,p_step_title=>'Cadastro de Membro (Admin)'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68729458983497251)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region-orderBy--end'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83403707766263117)
,p_plug_name=>'MEMBER Form'
,p_title=>'Member Form'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'MEMBER'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83602805898306095)
,p_plug_name=>'MEMBER Hidden'
,p_parent_plug_id=>wwv_flow_imp.id(83403707766263117)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91441688352055715)
,p_plug_name=>'ENTITY Form'
,p_title=>'Entity Form'
,p_region_name=>'entity_form'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'ENTITY'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P26_ENTITY_ID'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83007655946721792)
,p_plug_name=>'ENTITY Hidden'
,p_parent_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>100
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67730555580810095)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68729458983497251)
,p_button_name=>'UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_show_processing=>'Y'
,p_button_condition=>'P26_ENTITY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67730970559810096)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68729458983497251)
,p_button_name=>'INSERT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_show_processing=>'Y'
,p_button_condition=>'P26_ENTITY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67731754468810097)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68729458983497251)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Excluir'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P26_MEMBER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67731359349810097)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43805811200580568)
,p_name=>'P26_MEMBER_TENANT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(83403707766263117)
,p_item_source_plug_id=>wwv_flow_imp.id(83403707766263117)
,p_prompt=>'Tenant (Org)'
,p_source=>'TENANT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT upper(code), code display',
'FROM tenant',
'WHERE 1 = 1',
'  and active = 1',
';',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68730707126497263)
,p_name=>'P26_MEMBER_ACTIVE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(83403707766263117)
,p_item_source_plug_id=>wwv_flow_imp.id(83403707766263117)
,p_prompt=>'Ativo'
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Inativo',
  'off_value', '0',
  'on_label', 'Ativo',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82994575425306316)
,p_name=>'P26_ENTITY_ID_PESSOA_OLD'
,p_source_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(83007655946721792)
,p_item_source_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_prompt=>'P26_ENTITY_ID_PESSOA_OLD'
,p_source=>'ID_PESSOA_OLD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83015299459721816)
,p_name=>'P26_ENTITY_ID_ENDERECO_RESIDENCIAL_OLD'
,p_source_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(83007655946721792)
,p_item_source_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_prompt=>'P26_ENTITY_ID_ENDERECO_RESIDENCIAL_OLD'
,p_source=>'ID_ENDERECO_RESIDENCIAL_OLD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83015370619721817)
,p_name=>'P26_ENTITY_ID_ENDERECO_COMERCIAL_OLD'
,p_source_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(83007655946721792)
,p_item_source_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_prompt=>'P26_ENTITY_ID_ENDERECO_COMERCIAL_OLD'
,p_source=>'ID_ENDERECO_COMERCIAL_OLD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83408325802263148)
,p_name=>'P26_ENTITY_CPF_MASK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_item_source_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_prompt=>'CPF'
,p_source=>'BR_CPF_MASK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>'P26_ENTITY_CPF'
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
 p_id=>wwv_flow_imp.id(83415110445263150)
,p_name=>'P26_MEMBER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(83602805898306095)
,p_item_source_plug_id=>wwv_flow_imp.id(83403707766263117)
,p_prompt=>'P26_MEMBER_ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83415253426263151)
,p_name=>'P26_MEMBER_ID_MEMBRO_OLD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(83602805898306095)
,p_item_source_plug_id=>wwv_flow_imp.id(83403707766263117)
,p_prompt=>'P26_MEMBER_ID_MEMBRO_OLD'
,p_source=>'ID_MEMBRO_OLD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83416369651263162)
,p_name=>'P26_MEMBER_ETYPE_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(83403707766263117)
,p_item_source_plug_id=>wwv_flow_imp.id(83403707766263117)
,p_prompt=>'Tipo'
,p_source=>'ETYPE_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT name, code',
'FROM vw_raw_etype',
'WHERE  tenant_code = :P26_MEMBER_TENANT_CODE',
'ORDER BY name',
';'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P26_MEMBER_TENANT_CODE'
,p_ajax_items_to_submit=>'P26_MEMBER_TENANT_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83416489676263164)
,p_name=>'P26_MEMBER_ENTITY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(83403707766263117)
,p_item_source_plug_id=>wwv_flow_imp.id(83403707766263117)
,p_prompt=>'Entidade'
,p_source=>'ENTITY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''['' || id || ''] '' || name || '' ('' || br_cpf || '') - '' || email AS info,',
'       id',
'FROM entity',
'WHERE 1 = 1',
'  AND :P26_MEMBER_TENANT_CODE IS NOT NULL',
'  AND lower(tenant_code) = lower(:P26_MEMBER_TENANT_CODE)',
'ORDER BY name'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P26_MEMBER_TENANT_CODE'
,p_ajax_items_to_submit=>'P26_MEMBER_TENANT_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83613736737306123)
,p_name=>'P26_MEMBER_ID_PESSOA_OLD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(83602805898306095)
,p_item_source_plug_id=>wwv_flow_imp.id(83403707766263117)
,p_prompt=>'P26_MEMBER_ID_PESSOA_OLD'
,p_source=>'ID_PESSOA_OLD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83613863698306124)
,p_name=>'P26_MEMBER_ID_PESSOA_EMPRESA_OLD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(83602805898306095)
,p_item_source_plug_id=>wwv_flow_imp.id(83403707766263117)
,p_prompt=>'P26_MEMBER_ID_PESSOA_EMPRESA_OLD'
,p_source=>'ID_PESSOA_EMPRESA_OLD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91444652772055730)
,p_name=>'P26_ENTITY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_item_source_plug_id=>wwv_flow_imp.id(91441688352055715)
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
 p_id=>wwv_flow_imp.id(91449582664055740)
,p_name=>'P26_ENTITY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(83007655946721792)
,p_item_source_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_prompt=>'P26_ENTITY_ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91843009941244355)
,p_name=>'P26_ENTITY_CPF'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_item_source_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_prompt=>'CPF'
,p_source=>'BR_CPF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_display_when=>'P26_ENTITY_CPF'
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
 p_id=>wwv_flow_imp.id(91843533843244360)
,p_name=>'P26_ENTITY_BR_MOBILE_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_item_source_plug_id=>wwv_flow_imp.id(91441688352055715)
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
 p_id=>wwv_flow_imp.id(91845896142244384)
,p_name=>'P26_ENTITY_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_item_source_plug_id=>wwv_flow_imp.id(91441688352055715)
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
 p_id=>wwv_flow_imp.id(91845975586244385)
,p_name=>'P26_ENTITY_UF_RESIDENCIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_item_source_plug_id=>wwv_flow_imp.id(91441688352055715)
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
 p_id=>wwv_flow_imp.id(91846115919244386)
,p_name=>'P26_ENTITY_BIRTH_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(91441688352055715)
,p_item_source_plug_id=>wwv_flow_imp.id(91441688352055715)
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
 p_id=>wwv_flow_imp.id(67746537806810138)
,p_validation_name=>'P26_ENTITY_BIRTH_DATE'
,p_validation_sequence=>10
,p_validation=>'TO_DATE(:P26_ENTITY_BIRTH_DATE, ''DD/MM/YYYY'') <= TRUNC(SYSDATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Data de nascimento inv\00E1lida. N\00E3o pode ser maior que a atual.')
,p_associated_item=>wwv_flow_imp.id(91846115919244386)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67745737485810137)
,p_validation_name=>'P26_ENTITY_EMAIL'
,p_validation_sequence=>20
,p_validation=>'RETURN REGEXP_LIKE(:P26_ENTITY_EMAIL, ''^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'');'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('E-mail inv\00E1lido.')
,p_associated_item=>wwv_flow_imp.id(91845896142244384)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67746176918810138)
,p_validation_name=>'P26_CPF'
,p_validation_sequence=>30
,p_validation=>'RETURN is_cpf_valid(:P26_CPF);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('CPF inv\00E1lido.')
,p_associated_item=>wwv_flow_imp.id(91843009941244355)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(7887430499527870)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67748014143810144)
,p_name=>'page_load'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67748580138810145)
,p_event_id=>wwv_flow_imp.id(67748014143810144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'applyMasks();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67748915853810146)
,p_name=>'CANCEL'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67731359349810097)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67749463296810147)
,p_event_id=>wwv_flow_imp.id(67748915853810146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68729580654497252)
,p_name=>'P26_MEMBER_TENANT_CODE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_MEMBER_TENANT_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68729680831497253)
,p_event_id=>wwv_flow_imp.id(68729580654497252)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_MEMBER_ETYPE_CODE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68730772523497264)
,p_name=>'P26_MEMBER_ENTITY_ID Change'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_MEMBER_ENTITY_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68730823627497265)
,p_event_id=>wwv_flow_imp.id(68730772523497264)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_ENTITY_ID, P26_ENTITY_NAME, P26_ENTITY_CPF, P26_ENTITY_BR_MOBILE_PHONE, P26_ENTITY_EMAIL, P26_ENTITY_UF_RESIDENCIAL, P26_ENTITY_BIRTH_DATE, P26_ENTITY_ID_PESSOA_OLD, P26_MEMBER_ID_PESSOA_OLD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    e.id,',
'    e.name,',
'    e.br_cpf,',
'    e.br_mobile,',
'    e.email,',
'    e.home_uf,',
'    to_char(e.birth_date, ''DD/MM/YYYY''),',
'    e.id_pessoa_old,',
'    e.id_pessoa_old',
'    ',
'FROM entity e',
'WHERE e.id = :P26_MEMBER_ENTITY_ID'))
,p_attribute_07=>'P26_MEMBER_ENTITY_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68730936163497266)
,p_event_id=>wwv_flow_imp.id(68730772523497264)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'[',
'  ''P26_ENTITY_ID'',',
'  ''P26_ENTITY_NAME'',',
'  ''P26_ENTITY_CPF'',',
'  ''P26_ENTITY_BR_MOBILE_PHONE'',',
'  ''P26_ENTITY_EMAIL'',',
'  ''P26_ENTITY_UF_RESIDENCIAL'',',
'  ''P26_ENTITY_BIRTH_DATE'',',
'  ''P26_ENTITY_ID_PESSOA_OLD'',',
'  ''P26_MEMBER_ID_PESSOA_OLD'',',
'  ''P26_MEMBER_ID_PESSOA_EMPRESA_OLD''',
'].forEach(function(item) {',
'  apex.item(item).setValue('''');',
'});'))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P26_MEMBER_ENTITY_ID'
,p_build_option_id=>wwv_flow_imp.id(7887430499527870)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67736888263810111)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(91441688352055715)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Entity DML (insert/update) if not Delete'
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
,p_internal_uid=>81792780615500464
,p_process_comment=>unistr('Nao apaga fisicamente do banco, fica orf\00E3 de membro')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67746854521810139)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Member Persist'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- noinspection SqlInsertValuesForFile',
'',
'DECLARE',
'    --     ljson CLOB;',
'',
'BEGIN',
'',
'    --',
'    apex_debug.message(''P26_MEMBER_TENANT_CODE = %s'', :P26_MEMBER_TENANT_CODE);',
'    apex_debug.message(''P26_MEMBER_ETYPE_CODE = %s'', :P26_MEMBER_ETYPE_CODE);',
'    apex_debug.message(''P26_MEMBER_ENTITY_ID = %s'', :P26_MEMBER_ENTITY_ID);',
'    apex_debug.message(''P26_ENTITY_ID = %s'', :P26_ENTITY_ID);',
'',
'    --  DELETE',
'    IF :REQUEST = ''DELETE'' AND :P26_MEMBER_ID IS NOT NULL THEN',
'        -- apaga http antes',
'        --         ljson := json_member(:P26_MEMBER_ID, NULL, 1);',
'        --         prc_http_member(ljson);',
'',
'        -- apaga banco',
'        DELETE FROM member WHERE id = :P26_MEMBER_ID;',
'',
'        -- INSERT',
'    ELSIF :P26_MEMBER_ID IS NULL THEN',
'',
'        -- insere membro antes',
'        INSERT INTO member (',
'            tenant_code,',
'            etype_code,',
'            entity_id,',
'            active',
'        )',
'        VALUES (',
'            lower(trim(:P26_MEMBER_TENANT_CODE)),',
'            lower(trim(:P26_MEMBER_ETYPE_CODE)),',
'            :P26_MEMBER_ENTITY_ID,',
'            :P26_MEMBER_ACTIVE',
'        )',
'        RETURNING id INTO :P26_MEMBER_ID;',
'',
'        -- atualiza http',
'        --         ljson := json_member(:P26_MEMBER_ID);',
'        --         prc_http_member(ljson);',
'',
'        -- UPDATE',
'    ELSIF :P26_MEMBER_ID IS NOT NULL THEN',
'',
'        --',
'        UPDATE member',
'        SET tenant_code = lower(trim(:P26_MEMBER_TENANT_CODE)),',
'            etype_code   = lower(trim(:P26_MEMBER_ETYPE_CODE)),',
'            entity_id    = :P26_MEMBER_ENTITY_ID,',
'            active       = :P26_MEMBER_ACTIVE',
'        WHERE id = :P26_MEMBER_ID;',
'',
'        -- atualiza http',
'        --         ljson := json_member(:P26_MEMBER_ID);',
'        --         prc_http_member(ljson);',
'',
'    END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>81802746873500492
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67747707394810143)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Enviar email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --prc_http_mail(''Novo cadastro (Dia-a-Dia): '' || TO_CHAR(:P26_NAME), TO_CHAR(:P26_NAME));',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(7887430499527870)
,p_internal_uid=>81803599746500496
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67740454962810121)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(83403707766263117)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'MEMBER Form'
,p_internal_uid=>81796347314500474
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36009893557569552)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P26_ENTITY_ID '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    :P26_ENTITY_ID := :P26_MEMBER_ENTITY_ID;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>50065785909259905
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67736429589810111)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(91441688352055715)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'ENTITY Form'
,p_internal_uid=>81792321941500464
);
wwv_flow_imp.component_end;
end;
/
