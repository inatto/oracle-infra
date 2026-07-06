prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_name=>'Report'
,p_alias=>'REPORT'
,p_page_mode=>'NON_MODAL'
,p_step_title=>unistr('Relat\00F3rio')
,p_autocomplete_on_off=>'OFF'
,p_page_css_classes=>'page-black'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3017749597056049)
,p_plug_name=>'iframe p'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'  html, body {',
'    margin: 0;',
'    height: 100%;',
'  }',
'  #iframe-fullscreen {',
'    position: fixed;',
'    top: 0;',
'    left: 0;',
'    width: 100%;',
'    height: 100%;',
'    border: none;',
'  }',
'</style>',
'',
'<iframe id="iframe-fullscreen" src="https://app.sindicatto.com/Relatorio?r=p&f=&P13_FORMAT.&o=&P13_ORIENTATION."></iframe>',
''))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P13_WHAT_REPORT'
,p_plug_display_when_cond2=>'p'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3109796334389188)
,p_plug_name=>'iframe pi'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'  html, body {',
'    margin: 0;',
'    height: 100%;',
'  }',
'  #iframe-fullscreen {',
'    position: fixed;',
'    top: 0;',
'    left: 0;',
'    width: 100%;',
'    height: 100%;',
'    border: none;',
'  }',
'</style>',
'',
'<iframe id="iframe-fullscreen" src="https://app.sindicatto.com/Relatorio?r=pi&f=&P13_FORMAT.&o=&P13_ORIENTATION.&cpf=&P13_CPF."></iframe>',
''))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P13_WHAT_REPORT'
,p_plug_display_when_cond2=>'pi'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3018098829056052)
,p_name=>'P13_FORMAT'
,p_item_sequence=>60
,p_source=>'h'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3018708962056059)
,p_name=>'P13_ORIENTATION'
,p_item_sequence=>70
,p_source=>'h'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3109623830389187)
,p_name=>'P13_WHAT_REPORT'
,p_item_sequence=>30
,p_source=>'h'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3109824608389189)
,p_name=>'P13_CPF'
,p_item_sequence=>40
,p_source=>'h'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4603667915336048)
,p_name=>'P13_UF'
,p_item_sequence=>50
,p_source=>'h'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
