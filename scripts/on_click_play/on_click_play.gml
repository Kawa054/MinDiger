function on_click_play(){
	rm_start_manager.is_menu_opening = false;
	rm_start_manager.room_stat = ROOM_START_STAT_DATAS;
	instance_destroy(obj_simple_button);
}