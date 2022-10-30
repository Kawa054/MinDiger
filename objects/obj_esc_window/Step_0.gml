if(global.button_hovering_active){
	var mouseX = device_mouse_x_to_gui(0);
	var mouseY = device_mouse_y_to_gui(0);

	hover_state = -1;
	hovering = 0;
	if (point_in_rectangle(mouseX, mouseY, x + (width - ESC_BUTTON_WIDTH)/2 - ESC_BUTTON_OL_SIZE, y + 130 - ESC_BUTTON_OL_SIZE, x + (width + ESC_BUTTON_WIDTH)/2 + ESC_BUTTON_OL_SIZE, y + 130 + ESC_BUTTON_HEIGHT + ESC_BUTTON_OL_SIZE)){ hover_state = 0; hovering = 1}
	if (point_in_rectangle(mouseX, mouseY, x + (width - ESC_BUTTON_WIDTH)/2 - ESC_BUTTON_OL_SIZE, y + 400 - ESC_BUTTON_OL_SIZE, x + (width + ESC_BUTTON_WIDTH)/2 + ESC_BUTTON_OL_SIZE, y + 400 + ESC_BUTTON_HEIGHT + ESC_BUTTON_OL_SIZE)){ hover_state = 1; hovering = 1}
	if (point_in_rectangle(mouseX, mouseY, x + (width - ESC_BUTTON_WIDTH)/2 - ESC_BUTTON_OL_SIZE, y + 520 - ESC_BUTTON_OL_SIZE, x + (width + ESC_BUTTON_WIDTH)/2 + ESC_BUTTON_OL_SIZE, y + 520 + ESC_BUTTON_HEIGHT + ESC_BUTTON_OL_SIZE)){ hover_state = 2; hovering = 1}
	if (point_in_rectangle(mouseX, mouseY, x + width - ESC_BACKBUTTON_SIZE, y, x + width - ESC_BACKBUTTON_SIZE + 75, y + 75)){ hover_state = 3; hovering = 1}

	hover = lerp(hover, hovering, 0.1);

	//クリック処理
	if (hover_state >= 0 && mouse_check_button_pressed(mb_left)) {
		//チャタリング回避
		alarm[0] = 12;
	} 

	//ホバー処理
	if (mouse_check_button_released(mb_left)) {	
		if (hover_state >= 0) {
			state = hover_state;
		}
	}
}