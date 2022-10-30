state = SETTINGS_STATE_GENERAL; //どの設定群か
hover_state = -1;
clicked = false;

width = SETTINGS_MENU_WIDTH;
height = SETTINGS_MENU_HEIGHT;
upper_width = (width - 3*SETTINGS_MENU_UPPER_MARGIN)/4;

decide_hover = -1;
on_off_hover = -1;

change = -1;
change_hover = -1;

volume_1_hover = -1;
volume_2_hover = -1;

back_hover = -1;

message = "";
cursor = "|";
delay = 20;
alarm[0] = delay;

//設定項目
setting_key_W = global.setting_key_W;
setting_key_A = global.setting_key_A;
setting_key_S = global.setting_key_S;
setting_key_D = global.setting_key_D;
setting_key_talk = global.setting_key_talk;

setting_video_hideUI = global.setting_video_hideUI;
setting_video_hideKeyNavigation = global.setting_video_hideKeyNavigation;
setting_video_hideESCNavigation = global.setting_video_hideESCNavigation;

setting_volume_main = global.setting_volume_main;
setting_volume_sfx = global.setting_volume_sfx;

x = (window_get_width() - width) / 2;
y = (window_get_height() - height) / 2;