prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_name=>unistr('Relat\00F3rio de envios')
,p_alias=>'EMAIL-DELIVERY-REPORT-PAGE'
,p_step_title=>unistr('Relat\00F3rio de envios')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12810273650519156)
,p_plug_name=>unistr('Relat\00F3rio de envios')
,p_title=>unistr('Relat\00F3rio de envios')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'VW_MAIL_QUEUE'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'CREATED_AT DESC'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>unistr('Relat\00F3rio de envios')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12810322408519156)
,p_name=>unistr('Relat\00F3rio de envios')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEV'
,p_internal_uid=>26866214760209509
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12810973114519322)
,p_db_column_name=>'MAIL_SUBJECT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Assunto do e-mail'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12811399318519325)
,p_db_column_name=>'TOTAL_ENVIADOS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Total Enviados'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12811807549519326)
,p_db_column_name=>'TOTAL_HARD_BOUNCES'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Total Hard Bounces'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12812131679519326)
,p_db_column_name=>'TOTAL_SOFT_BOUNCES'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Total Soft Bounces'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12812524461519327)
,p_db_column_name=>'TOTAL_SPAM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Total Spam'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36009496237569548)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>15
,p_column_identifier=>'F'
,p_column_label=>'Data'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12813352376520175)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'268693'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATED_AT:MAIL_SUBJECT:TOTAL_ENVIADOS:TOTAL_HARD_BOUNCES:TOTAL_SOFT_BOUNCES:TOTAL_SPAM:'
);
wwv_flow_imp.component_end;
end;
/
