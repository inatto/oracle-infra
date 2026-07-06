prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2008111816775548)
,p_plug_name=>'dashboard-static-content'
,p_title=>'Dashboard'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'has_permission(''dashboard-static-content'')'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2711022415569060)
,p_plug_name=>'Processos/Partes'
,p_title=>unistr('Jur\00EDdico')
,p_parent_plug_id=>wwv_flow_imp.id(2008111816775548)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'tenant_has_lawsuits > 0'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2710366425569053)
,p_plug_name=>'Processos com mais partes'
,p_title=>'Processos com mais partes'
,p_parent_plug_id=>wwv_flow_imp.id(2711022415569060)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2710493454569054)
,p_region_id=>wwv_flow_imp.id(2710366425569053)
,p_chart_type=>'bar'
,p_title=>'Processos com mais partes'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'value-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2710596582569055)
,p_chart_id=>wwv_flow_imp.id(2710493454569054)
,p_seq=>10
,p_name=>'Processos com mais partes'
,p_data_source_type=>'TABLE'
,p_query_table=>'VW_PROCESSOS_COM_MAIS_PARTES'
,p_include_rowid_column=>false
,p_items_value_column_name=>'PARTES_CPF'
,p_items_label_column_name=>'NR_PROCESSO'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2710696459569056)
,p_chart_id=>wwv_flow_imp.id(2710493454569054)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2710762079569057)
,p_chart_id=>wwv_flow_imp.id(2710493454569054)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2711420528569064)
,p_plug_name=>'Total processos'
,p_parent_plug_id=>wwv_flow_imp.id(2711022415569060)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>4
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="&P1_TOTAL_PROCESSOS_URL.">',
'	<div class="dash-card">',
'		<div class="dash-card-header">',
'			<div class="dash-card-title">Total de Processos</div>',
'		</div>',
'        <div>',
'            <span class="fa fa-gavel" aria-hidden="true"></span>',
'		    <span class="dash-card-value format-this-number">&P1_TOTAL_PROCESSOS.</span>',
'        </div>',
'	</div>',
'',
'</a>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2711787686569067)
,p_plug_name=>'Total partes'
,p_parent_plug_id=>wwv_flow_imp.id(2711022415569060)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="&P1_TOTAL_PARTES_URL.">',
'    <div class="dash-card">',
'        <div class="dash-card-header">',
'            <div class="dash-card-title">Total de partes</div>',
'        </div>',
'<span class="fa fa-users-chat" aria-hidden="true"></span>',
'        <span class="dash-card-value format-this-number">&P1_TOTAL_PARTES.</span>',
'    </div>',
'</a>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2712788579569077)
,p_plug_name=>unistr('Processos por situa\00E7\00E3o funcional')
,p_title=>unistr('Processos por situa\00E7\00E3o funcional')
,p_parent_plug_id=>wwv_flow_imp.id(2711022415569060)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2712896888569078)
,p_region_id=>wwv_flow_imp.id(2712788579569077)
,p_chart_type=>'pie'
,p_title=>unistr('Processos por situa\00E7\00E3o funcional')
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2712976122569079)
,p_chart_id=>wwv_flow_imp.id(2712896888569078)
,p_seq=>10
,p_name=>unistr('Processos por situa\00E7\00E3o funcional')
,p_data_source_type=>'TABLE'
,p_query_table=>'VW_PROCESSOS_POR_SITUACAO_FUNCIONAL'
,p_include_rowid_column=>false
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'SITUACAO_FUNCIONAL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LBL_VAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2711676599569066)
,p_plug_name=>'Cadastros'
,p_parent_plug_id=>wwv_flow_imp.id(2008111816775548)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2008250646775549)
,p_plug_name=>'Chart Entidades'
,p_title=>'Membros &G_TENANT_CODE.'
,p_parent_plug_id=>wwv_flow_imp.id(2711676599569066)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'tenant_has_partners() > 0'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2008394691775550)
,p_region_id=>wwv_flow_imp.id(2008250646775549)
,p_chart_type=>'pie'
,p_title=>'Associados em entidades parceiras'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2008473071775551)
,p_chart_id=>wwv_flow_imp.id(2008394691775550)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select code, total from vw_membros_por_entidade',
';'))
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'CODE'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LBL_VAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2628100715656148)
,p_plug_name=>'Chart Etypes'
,p_title=>'Cadastros por tipo'
,p_parent_plug_id=>wwv_flow_imp.id(2711676599569066)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2628161635656149)
,p_region_id=>wwv_flow_imp.id(2628100715656148)
,p_chart_type=>'bar'
,p_title=>'Cadastros'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2628219128656150)
,p_chart_id=>wwv_flow_imp.id(2628161635656149)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select plural_name, total from vw_membros_por_perfil',
'order by total  desc',
';'))
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'PLURAL_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2713455712569084)
,p_chart_id=>wwv_flow_imp.id(2628161635656149)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2713557940569085)
,p_chart_id=>wwv_flow_imp.id(2628161635656149)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2711542507569065)
,p_plug_name=>'Total Cadastros'
,p_parent_plug_id=>wwv_flow_imp.id(2711676599569066)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <div class="dash-card">',
'        <div class="dash-card-header">',
'            <div class="dash-card-title">Total de Cadastros</div>',
'        </div>',
'        <span class="fa fa fa-solid fa-users" aria-hidden="true"></span>',
'        <span class="dash-card-value format-this-number">&P1_TOTAL_CADASTROS.</span>',
'    </div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2712151274569071)
,p_plug_name=>'Total'
,p_parent_plug_id=>wwv_flow_imp.id(2711676599569066)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="dash-card">',
'    <div class="dash-card-header">',
'        <div class="dash-card-title">Total de associados em entidades parceiras</div>',
'    </div>',
'    <div class="dash-card-value format-this-number">&P1_ASSOCIADOS_PARCEIROS.</div>',
'</div>',
''))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'tenant_has_partners() > 0'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3455766573645181)
,p_plug_name=>'Hidden'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3452868513645152)
,p_branch_name=>'Go To Page 9998'
,p_branch_action=>'f?p=&APP_ID.:9998:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'G_MEMBER_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2711210273569062)
,p_name=>'P1_TOTAL_CADASTROS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2711676599569066)
,p_source=>'select sum(total) from vw_membros_por_perfil'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2711395535569063)
,p_name=>'P1_TOTAL_PROCESSOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2711022415569060)
,p_source=>'tenant_has_lawsuits'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2711883575569068)
,p_name=>'P1_TOTAL_PARTES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2711022415569060)
,p_source=>'SELECT sum(partes_cpf) FROM vw_processo_br_grouped'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2712062154569070)
,p_name=>'P1_ASSOCIADOS_PARCEIROS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2008250646775549)
,p_item_display_point=>'CREATE'
,p_source=>'select sum(total)total from vw_membros_por_entidade'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2712500025569074)
,p_name=>'P1_TOTAL_PROCESSOS_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2711022415569060)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2712567318569075)
,p_name=>'P1_TOTAL_PARTES_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2711022415569060)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2712379948569073)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Links()'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--',
':P1_TOTAL_PROCESSOS_URL := apex_page.get_url(p_page => 12);',
':P1_TOTAL_PARTES_URL := apex_page.get_url(p_page => 3);'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>16768272300259426
);
wwv_flow_imp.component_end;
end;
/
