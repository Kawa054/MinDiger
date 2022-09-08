var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

 hover_state = -1;
if (point_in_rectangle(mouseX, mouseY, x + 0*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT, x+upper_width + 0*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y)){ hover_state = SETTINGS_STATE_GENERAL; }
if (point_in_rectangle(mouseX, mouseY, x + 1*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT, x+upper_width + 1*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y)){ hover_state = SETTINGS_STATE_KEY; }
if (point_in_rectangle(mouseX, mouseY, x + 2*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT, x+upper_width + 2*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y)){ hover_state = SETTINGS_STATE_VIDEO; }
if (point_in_rectangle(mouseX, mouseY, x + 3*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT, x+upper_width + 3*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y)){ hover_state = SETTINGS_STATE_AUDIO; }

if (hover_state >= 0 && mouse_check_button_pressed(mb_left)) {
	clicked = true;
} 

if (mouse_check_button_released(mb_left)) {
	clicked = false;

	if (hover_state >= 0) {
		state = hover_state;
	}	
} 