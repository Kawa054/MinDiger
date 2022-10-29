var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

if(global.button_hovering_active){
	if (point_in_rectangle(mouseX, mouseY, x + 0*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y - MODE_FREE_SELECT_ITEMMENU_UPPER_HEIGHT, x+upper_width + 0*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y)){ hover_state = FREEITEM_MENU_STATE_PICKAXE; }
	if (point_in_rectangle(mouseX, mouseY, x + 1*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y - MODE_FREE_SELECT_ITEMMENU_UPPER_HEIGHT, x+upper_width + 1*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y)){ hover_state = FREEITEM_MENU_STATE_HP; }
	if (point_in_rectangle(mouseX, mouseY, x + 2*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y - MODE_FREE_SELECT_ITEMMENU_UPPER_HEIGHT, x+upper_width + 2*(upper_width + MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN), y)){ hover_state = FREEITEM_MENU_STATE_ITEMS; }

	pickaxe_id_hover = -1;
	health_hover = -1;
	item_id_hover = -1;
	plus_hover = -1;
	minus_hover = -1;
	switch(hover_state){
		case FREEITEM_MENU_STATE_PICKAXE:
			if (point_in_rectangle(mouseX, mouseY, x + 100, y + 40, x + 100 + 200, y + 40 + 200)){ pickaxe_id_hover = ITEM_PICKAXE_NORMAL; }
			if (point_in_rectangle(mouseX, mouseY, x + 350, y + 40, x + 350 + 200, y + 40 + 200)){ pickaxe_id_hover = ITEM_PICKAXE_ATTACK; }
			if (point_in_rectangle(mouseX, mouseY, x + 600, y + 40, x + 600 + 200, y + 40 + 200)){ pickaxe_id_hover = ITEM_PICKAXE_SPEED; }
		break;
		
		case FREEITEM_MENU_STATE_HP:
			if (point_in_rectangle(mouseX, mouseY, x + 830     , y + height / 2 - 120,      x + 830 + 65, y + height / 2 - 120 + 65)){ health_hover = 0; }
			if (point_in_rectangle(mouseX, mouseY, x + 350 - 82, y + height / 2 - 120, x + 350 - 82 + 65, y + height / 2 - 120 + 65)){ health_hover = 1; }
		break;
		
		case FREEITEM_MENU_STATE_ITEMS:
			if (point_in_rectangle(mouseX, mouseY, x + 100, y + 40, x + 100 + 210, y + 40 + 120)){ item_id_hover = ITEM_ID_TORCH; }
			if (point_in_rectangle(mouseX, mouseY, x + 450, y + 40, x + 450 + 210, y + 40 + 120)){ item_id_hover = ITEM_ID_YARI1; }	
			if (point_in_rectangle(mouseX, mouseY, x + 800, y + 40, x + 800 + 210, y + 40 + 120)){ item_id_hover = ITEM_ID_PORTION1; }
			if (point_in_rectangle(mouseX, mouseY, x + 450, y + 180, x + 450 + 210, y + 180 + 120)){ item_id_hover = ITEM_ID_YARI2; }	
			if (point_in_rectangle(mouseX, mouseY, x + 800, y + 180, x + 800 + 210, y + 180 + 120)){ item_id_hover = ITEM_ID_PORTION2; }
			if (point_in_rectangle(mouseX, mouseY, x + 450, y + 320, x + 450 + 210, y + 320 + 120)){ item_id_hover = ITEM_ID_YARI3; }	
			if (point_in_rectangle(mouseX, mouseY, x + 800, y + 320, x + 800 + 210, y + 320 + 120)){ item_id_hover = ITEM_ID_PORTION3; }
			
			if (point_in_rectangle(mouseX, mouseY, x + 350, y + 580, x + 350 + 40, y + 580 + 40)){ plus_hover = 0; }	
			if (point_in_rectangle(mouseX, mouseY, x + 300, y + 580, x + 300 + 40, y + 580 + 40)){ minus_hover = 0; }
			
		break;
	}

	decide_hover = -1;
	if (point_in_rectangle(mouseX, mouseY, x + width - sprite_get_width(icon_decide), y + height + 30, x + width, y + height + 30 + sprite_get_height(icon_decide))){ decide_hover = 0; }

	if (hover_state >= 0 && mouse_check_button_pressed(mb_left)) {
		clicked = true;
		if(health_hover == 0){
			if(player_health + 0.5 <= 5){
				player_health += 0.5;
			}
		}else if(health_hover == 1){
			if(player_health - 0.5 >= 0.5){
				player_health -= 0.5;
			}
		}
	
		if (hover_state >= 0) {
			state = hover_state;
		}
	
		if(pickaxe_id_hover >= 0){
			pickaxe_id = pickaxe_id_hover;
		}
	
		if(item_id_hover >= 0){
			item_id = item_id_hover;
		}
	
		if(decide_hover >= 0){
			create_popup(POPUP_ID_FREE_CONFIRM, POPUP_INFOTYPE_INFO, POPUP_RESPONSETYPE_YN, ["ダンジョンへ入ります", "準備はいいですか？"], [
				make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B),
				make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
			]);
		}
		
		if(plus_hover >= 0){
			if(item_nums[item_id] + 1 <= 99){
				item_nums[item_id] += 1;
			}else{
				item_nums[item_id] = 99;
			}
		}
		
		if(minus_hover >= 0){
			if(item_nums[item_id] - 1 >= 0){
				item_nums[item_id] -= 1;
			}else{
				item_nums[item_id] = 0;
			}
		}
	} 

	if (mouse_check_button_released(mb_left)) {
		clicked = false;
	} 
}