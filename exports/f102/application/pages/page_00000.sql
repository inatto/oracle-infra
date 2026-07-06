prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2628861484656156)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_05'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="margin: auto; justify-items: center;">',
'    <img src="https://sindicatto.sindicattox.workers.dev/brand/&G_TENANT_CODE_LOWER.-400w.png" alt="Logo &G_TENANT_CODE." ',
'    style="max-width:200px;display:block;margin-bottom:10px; max-height: 60px; opacity: 80%; background-color: #ddd; padding: 10px;">',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11855505459515513)
,p_name=>'allow_full_menu_click'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11855605822515514)
,p_event_id=>wwv_flow_imp.id(11855505459515513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// expande sub menu clicando no label',
'// noinspection JSUnresolvedReference',
'',
'$("#t_TreeNav").on("treeviewactivatenode", function (e, ui) {',
'',
'	let n$ = $(e.originalEvent.target).closest(".a-TreeView-content");',
'	if (ui.nodes.length > 0 && ui.nodes[0].link === "") {',
'		if (n$.parent().hasClass("is-expandable")) {',
'			$(this).treeView("expand", n$)',
'		} else if (n$.parent().hasClass("is-collapsible")) {',
'			$(this).treeView("collapse", n$)',
'		}',
'	}',
'',
'});',
'',
''))
);
wwv_flow_imp.component_end;
end;
/
