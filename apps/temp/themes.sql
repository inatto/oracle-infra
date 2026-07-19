
select *
from
    apex_applications
;


select a.theme_style_by_user_pref
from
    apex_applications a
where a.application_id = :app_id
;

select *
from
    apex_application_themes
where application_id = 100
;

select s.name d, s.theme_style_id r, t.IS_CURRENT, t.THEME_INTERNAL_NAME, s.IS_CURRENT, s.THEME_NUMBER
from
    apex_application_theme_styles s
  , apex_application_themes t
where s.application_id = 100
  and t.application_id = s.application_id
  and t.theme_number = s.theme_number
  and t.is_current = 'Yes'
order by 1

-- where theme_number = 42 and name = 'Vita - Dark'