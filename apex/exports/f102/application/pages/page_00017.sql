prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_name=>'Trocar senha'
,p_alias=>'TROCAR-SENHA'
,p_page_mode=>'MODAL'
,p_step_title=>'Trocar senha'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3456738646645191)
,p_button_sequence=>40
,p_button_name=>'Trocar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Trocar'
,p_show_processing=>'Y'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3456586884645189)
,p_name=>'P17_NEW_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_prompt=>'Informe a nova senha'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3456973224645193)
,p_name=>'P17_MEMBER_ID_HIDDEN'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3599948967568848)
,p_name=>'P17_PASSWORD_CONFIRM'
,p_is_required=>true
,p_item_sequence=>30
,p_prompt=>'Confirme a senha'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3456896438645192)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Atualiza senha '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P17_MEMBER_ID_HIDDEN IS NULL THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000, ''Membro n\00E3o informado.'');'),
'    END IF;',
'',
'    IF :P17_NEW_PASSWORD IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20005, ''Informe a nova senha.'');',
'    END IF;',
'',
'    IF :P17_PASSWORD_CONFIRM IS NULL THEN',
'        RAISE_APPLICATION_ERROR(-20006, ''Confirme a nova senha.'');',
'    END IF;',
'',
'    IF :P17_NEW_PASSWORD <> :P17_PASSWORD_CONFIRM THEN',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''Senha e confirma\00E7\00E3o n\00E3o conferem.'');'),
'    END IF;',
'',
'    IF LENGTH(:P17_NEW_PASSWORD) < 4 THEN',
unistr('        RAISE_APPLICATION_ERROR(-20002, ''A senha deve ter no m\00EDnimo 4 caracteres.'');'),
'    ELSIF NOT REGEXP_LIKE(:P17_NEW_PASSWORD, ''[A-Za-z]'') THEN',
'        RAISE_APPLICATION_ERROR(-20003, ''A senha deve conter pelo menos uma letra.'');',
'    ELSIF NOT REGEXP_LIKE(:P17_NEW_PASSWORD, ''[0-9]'') THEN',
unistr('        RAISE_APPLICATION_ERROR(-20004, ''A senha deve conter pelo menos um n\00FAmero.'');'),
'    END IF;',
'',
'    --',
'    UPDATE entity e',
'    SET e.md5_password = LOWER(standard_hash(:P17_NEW_PASSWORD, ''MD5''))',
'    WHERE e.id = (SELECT m.entity_id',
'    FROM member m',
'    WHERE m.id = :P17_MEMBER_ID_HIDDEN);',
'',
'    IF SQL%ROWCOUNT = 0 THEN',
'        RAISE_APPLICATION_ERROR(-20007, ''Nenhuma pessoa/entity encontrada para esse membro.'');',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        IF SQLCODE BETWEEN -20999 AND -20000 THEN',
'            RAISE;',
'        ELSE',
'            RAISE_APPLICATION_ERROR(-20008, ''Erro ao atualizar senha: '' || SQLERRM);',
'        END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>17512788790335545
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3457350446645197)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>17513242798335550
);
wwv_flow_imp.component_end;
end;
/
