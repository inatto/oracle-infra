prompt --application/shared_components/logic/application_processes/date_brazil
begin
--   Manifest
--     APPLICATION PROCESS: Date Brazil
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.17'
,p_default_workspace_id=>7854223160412629
,p_default_application_id=>100
,p_default_id_offset=>14055892351690353
,p_default_owner=>'WKSP_SINDICATTO'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(68187976312506122)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Date Brazil'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    execute immediate q''[alter session set time_zone = ''America/Sao_Paulo'']'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'ALWAYS'
,p_version_scn=>47035056717596
);
wwv_flow_imp.component_end;
end;
/
