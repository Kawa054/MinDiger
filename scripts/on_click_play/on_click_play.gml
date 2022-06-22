function on_click_play(){
	show_debug_message("pressed play button");
	is_menu_opening = false;
	room_stat = ROOM_START_STAT_PREPARE;
	instance_destroy(obj_simple_button);
}