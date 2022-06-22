var select_button_x = room_width / 2;
var select_button_y = room_height / 2 - 200;
var button_width = 200;
var button_height = 100;
var button_sep_y = 130;

switch(room_stat){
	case ROOM_START_STAT_PREPARE:
		draw_text(room_width / 2 , 600 ,"press any key to start");
		if(mouse_check_button_pressed(mb_left || mb_right)) {
			room_stat = ROOM_START_STAT_SELECT;
		}
	break;
	
	case ROOM_START_STAT_SELECT:
		if(!is_menu_opening){
			is_menu_opening = true;
			create_simple_button(select_button_x, select_button_y + 0*button_sep_y, button_width, button_height, "play",	on_click_play);
			create_simple_button(select_button_x, select_button_y + 1*button_sep_y, button_width, button_height, "settings",on_click_settings);
			create_simple_button(select_button_x, select_button_y + 2*button_sep_y, button_width, button_height, "exit",	on_click_exit);
		}
	break;
	
	default:
	break;
}