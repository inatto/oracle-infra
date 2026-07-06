prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Tickets'
,p_alias=>'TICKETS'
,p_step_title=>'Tickets'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2069365536934651)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7958916804972941)
,p_plug_name=>'Tickets Abertos'
,p_title=>'Abertos'
,p_parent_plug_id=>wwv_flow_imp.id(2069365536934651)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:margin-top-md'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from vw_ticket',
'where 1=1',
'    and done_date is  null',
';',
''))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"URGENT","expr":"\"URGENT\" desc"},{"key":"OPEN_DATE1","expr":"\"ID\" desc"},{"key":"OPEN_DATE","expr":"\"ID\" asc"},{"key":"TITLE","expr":"\"TITLE\" asc"}],"itemName":"P4_ORDER_BY"}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<h2>Abertos</h2>'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(7959391781972944)
,p_region_id=>wwv_flow_imp.id(7958916804972941)
,p_layout_type=>'FLOAT'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if URGENT/}',
'    <div style="max-width: 200px; color: red;">&TITLE.</div>',
'{else/}',
'    <div style="max-width: 200px;">&TITLE.</div>',
'{endif/}',
'',
'',
''))
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'OPEN_DATE_STR'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="float: left; padding-right: 10px;">',
'    {if OPEN_DATE_STR/}',
'    <div style="font-size: x-small; color: #2f2f2f;">Abertura</div>',
'    <div style="font-size: smaller; color: #2f2f2f;">&OPEN_DATE_STR.</div>',
'    {endif/}',
'</div>',
'<div style="float: left;">',
'    {if DONE_DATE_STR/}',
'    <div style="font-size: x-small; color: #2f2f2f;">Fechamento</div>',
'    <div style="font-size: smaller; background-color: #ff3737; color: white; padding: 2px;">&DONE_DATE_STR.</div>',
'    {endif/}',
'</div>',
'<div style="clear: both;"></div>'))
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'ID'
,p_icon_css_classes=>'back-blue-violet'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(7877976697520611)
,p_card_id=>wwv_flow_imp.id(7959391781972944)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_ID:&ID.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8122218236687315)
,p_plug_name=>'Tickets Fechados'
,p_title=>'Fechados'
,p_parent_plug_id=>wwv_flow_imp.id(2069365536934651)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from vw_ticket',
'where 1=1',
'    and done_date is not null',
';'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"URGENT","expr":"\"URGENT\" desc"},{"key":"OPEN_DATE1","expr":"\"ID\" desc"},{"key":"OPEN_DATE","expr":"\"ID\" asc"},{"key":"TITLE","expr":"\"TITLE\" asc"}],"itemName":"P4_ORDER_BY"}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_header=>'<h2>Fechados</h2>'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8122335657687316)
,p_region_id=>wwv_flow_imp.id(8122218236687315)
,p_layout_type=>'FLOAT'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    {if URGENT/}',
'        <div style="max-width: 200px; color: red;">&TITLE.</div>',
'    {else/}',
'        <div style="max-width: 200px;">&TITLE.</div>',
'    {endif/}',
'',
'',
''))
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'OPEN_DATE_STR'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="float: left; padding-right: 10px;">',
'    {if OPEN_DATE_STR/}',
'    <div style="font-size: x-small; color: #2f2f2f;">Abertura</div>',
'    <div style="font-size: smaller; color: #2f2f2f;">&OPEN_DATE_STR.</div>',
'    {endif/}',
'</div>',
'<div style="float: left;">',
'    {if DONE_DATE_STR/}',
'    <div style="font-size: x-small; color: #2f2f2f;">Fechamento</div>',
'    <div style="font-size: smaller; background-color: gray; color: white; padding: 2px;">&DONE_DATE_STR.</div>',
'    {endif/}',
'</div>',
'<div style="clear: both;"></div>'))
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'ID'
,p_icon_css_classes=>'back-gray'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(8122490740687317)
,p_card_id=>wwv_flow_imp.id(8122335657687316)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_ID:&ID.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7958269507972938)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(7888069520527872)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7877618682520608)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2069365536934651)
,p_button_name=>'ticket-rapido'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Ticket r\00E1pido')
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-clipboard-new'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8121166761687304)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2069365536934651)
,p_button_name=>'novo-ticket-completo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ticket completo'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-file-new'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7959888957972948)
,p_name=>'P4_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7958916804972941)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'URGENT'
,p_prompt=>'Ordem'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:Urgentes;URGENT,Mais recentes;OPEN_DATE1,Mais antigos;OPEN_DATE,T\00EDtulo;TITLE')
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7877711544520609)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7877894140520610)
,p_event_id=>wwv_flow_imp.id(7877711544520609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7958916804972941)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8122568658687318)
,p_event_id=>wwv_flow_imp.id(7877711544520609)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8122218236687315)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8122005064687313)
,p_name=>'New_2'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_imp.id(7887430499527870)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8122160718687314)
,p_event_id=>wwv_flow_imp.id(8122005064687313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(7877618682520608)
);
wwv_flow_imp.component_end;
end;
/
