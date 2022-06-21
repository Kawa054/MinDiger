switch(room_stat){
	case ROOM_START_STAT_PREPARE:
		draw_text(room_width / 2 , 600 ,"press any key to start");
		if(mouse_check_button_pressed(mb_left || mb_right)) {
			room_stat = ROOM_START_STAT_SELECT;
		}
	break;
	
	case ROOM_START_STAT_SELECT:
	
	break;
	
	default:
	
	break;
}