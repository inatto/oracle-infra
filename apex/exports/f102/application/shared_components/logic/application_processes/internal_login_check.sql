prompt --application/shared_components/logic/application_processes/internal_login_check
begin
--   Manifest
--     APPLICATION PROCESS: internal_login_check
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
 p_id=>wwv_flow_imp.id(11268068246815873)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'internal_login_check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  BEGIN',
unistr('    RAISE_APPLICATION_ERROR(-20001, ''Sistema em manuten\00E7\00E3o. Tente novamente mais tarde.'');'),
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      NULL; -- ou log opcional',
'  END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>41721039068115
);
wwv_flow_imp.component_end;
end;
/
