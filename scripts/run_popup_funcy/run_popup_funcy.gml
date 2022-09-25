function run_popup_funcY(popup_id){
	switch(popup_id){
		case POPUP_ID_COPY:
		break;
		
		case POPUP_ID_DELETE:
		break;
		
		case POPUP_ID_EXIT:
			game_end();
		break;
		
		case POPUP_ID_GAME_STORY:
			blur_reset();
			rm_modeselect_manager.start_game = true;
			global.button_hovering_active = false;
		break;
		
		case POPUP_ID_HOME:
			back_from_modeselect();
		break;
	}
}