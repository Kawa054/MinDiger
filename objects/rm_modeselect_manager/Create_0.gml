var blur_amount = 1;
var _fx_struct1 = layer_get_fx("blur_effect");
var _fx_struct2 = layer_get_fx("color_effect");
fx_set_parameter(_fx_struct1, "g_LinearBlurVector", [START_BACKGROUND_BLUR_SIZE_X*blur_amount, START_BACKGROUND_BLUR_SIZE_Y*blur_amount]);
fx_set_parameter(_fx_struct2, "g_Intensity", START_BACKGROUND_COLOR_INTENSITY*blur_amount);
fx_set_parameter(_fx_struct2, "g_TintCol", [START_BACKGROUND_COLOR_R, START_BACKGROUND_COLOR_G, START_BACKGROUND_COLOR_B, START_BACKGROUND_COLOR_ALPHA]);

init_ms_button(0, obj_ms_story_button,		obj_ms_band_story);
init_ms_button(1, obj_ms_free_button,		obj_ms_band_free);
init_ms_button(2, obj_ms_challenge_button,	obj_ms_band_challenge);