is_setting_opening = false;

blur_set(1);

instance_deactivate_object(obj_setting_menu);
init_ms_button(0, obj_ms_story_button,		obj_ms_band_story);
init_ms_button(1, obj_ms_free_button,		obj_ms_band_free);
init_ms_button(2, obj_ms_challenge_button,	obj_ms_band_challenge);