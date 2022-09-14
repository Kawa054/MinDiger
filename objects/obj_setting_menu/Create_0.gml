state = SETTINGS_STATE_GENERAL; //どの設定群か
hover_state = -1;
clicked = false;

width = SETTINGS_MENU_WIDTH;
height = SETTINGS_MENU_HEIGHT;
upper_width = (width - 3*SETTINGS_MENU_UPPER_MARGIN)/4;

x = (window_get_width() - width) / 2;
y = (window_get_height() - height) / 2;