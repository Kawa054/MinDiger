var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

hover_state = -1;
if (point_in_rectangle(mouseX, mouseY, x + 0*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT, x+upper_width + 0*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y)){ hover_state = SETTINGS_STATE_GENERAL; }
if (point_in_rectangle(mouseX, mouseY, x + 1*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT, x+upper_width + 1*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y)){ hover_state = SETTINGS_STATE_KEY; }
if (point_in_rectangle(mouseX, mouseY, x + 2*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT, x+upper_width + 2*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y)){ hover_state = SETTINGS_STATE_VIDEO; }
if (point_in_rectangle(mouseX, mouseY, x + 3*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y - SETTINGS_MENU_UPPER_HEIGHT, x+upper_width + 3*(upper_width + SETTINGS_MENU_UPPER_MARGIN), y)){ hover_state = SETTINGS_STATE_AUDIO; }

decide_hover = -1;
if (point_in_rectangle(mouseX, mouseY, x + width - sprite_get_width(icon_decide), y + height + 30, x + width, y + height + 30 + sprite_get_height(icon_decide))){ decide_hover = 0; }

switch(state){
	case SETTINGS_STATE_VIDEO:
		on_off_hover = -1;
		for(var i = 0; i < 3; i++){
			for(var j = 0; j < 2; j++){
				if(point_in_rectangle(mouseX, mouseY,x + 370 + 120*j, y + 90 + 50*i, x + 370 + 120*j + 70, y + 90 + 50*i + 40)){
					on_off_hover = 2*i+j; 
				}
			}
		}
	break;
	
	case SETTINGS_STATE_KEY:
		change_hover = -1;
		for(var i = 0; i < 5; i++){
			if(point_in_rectangle(mouseX, mouseY,x + 366, y + 98 + 50*i, x + 366 + 62, y + 98 + 50*i + 30)){ change_hover = i; }
		}
		
		if(change >= 0){
			if (string_length(keyboard_string) <= 1)
				message = keyboard_string;
			else
				keyboard_string = message;
		
			switch(change){
				case 0:
					setting_key_W = message;
				break;
		
				case 1:
					setting_key_D = message;
				break;
		
				case 2:
					setting_key_A = message;
				break;
		
				case 3:
					setting_key_S = message;
				break;
		
				case 4:
					setting_key_talk = message;
				break;
			}
		}
	break;
	
	case SETTINGS_STATE_AUDIO:
		if(volume_1_hover == 0){
			if(mouseX >= x+390 && mouseX <=x+690){
				setting_volume_main = ceil((mouseX - x - 390)/3);
			}
		}

		if(volume_2_hover == 0){
			if(mouseX >= x+390 && mouseX <= x+690){
				setting_volume_sfx = ceil((mouseX - x - 390)/3);
			}
		}
	break;
}

if (state >= 0 && mouse_check_button_pressed(mb_left)) {
	clicked = true;
	if (hover_state >= 0) {
		state = hover_state;
	}
	
	if(decide_hover >= 0){
		create_popup(POPUP_ID_SETTING_CONFIRM, POPUP_INFOTYPE_INFO, POPUP_RESPONSETYPE_YN, ["変更を保存しますか？", "（保存しない場合、反映されません）"], [
			make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B),
			make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
		]);
	}
	
	switch(state){
		case SETTINGS_STATE_VIDEO:
			if (on_off_hover >= 0) {
				var i = floor(on_off_hover / 2);
				var j = on_off_hover % 2;
				if(i == 0){ setting_video_hideUI = 1-j; }
				if(i == 1){ setting_video_hideKeyNavigation = 1-j; }
				if(i == 2){ setting_video_hideESCNavigation = 1-j; }
			}
		break;
	
		case SETTINGS_STATE_KEY:
			if(change != change_hover)
				keyboard_string = "";
			change = change_hover;
		break;
	
		case SETTINGS_STATE_AUDIO:
			if(point_in_rectangle(mouseX, mouseY, x + 390 + 3*setting_volume_main - 11, y + 110 - 11, x + 390 + 3*setting_volume_main + 11, y + 110 + 11)){volume_1_hover = 0}
			if(point_in_rectangle(mouseX, mouseY, x + 390 + 3*setting_volume_sfx  - 11, y + 160 - 11, x + 390 + 3*setting_volume_sfx  + 11, y + 160 + 11)){volume_2_hover = 0}
		break;
	}
} 

if (mouse_check_button_released(mb_left)) {
	clicked = false;
	
	//音量関係
	volume_1_hover = -1;
	volume_2_hover = -1;
} 