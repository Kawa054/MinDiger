function run_popup_funcY(popup_id){
	switch(popup_id){
		case POPUP_ID_COPY:
		break;
		
		case POPUP_ID_DELETE:
			delete_savedata(global.selected_data_index);
		break;
		
		case POPUP_ID_EXIT:
			game_end();
		break;
		
		case POPUP_ID_PLUS:
			create_textbox_popup(POPUP_RESPONSETYPE_YN, ["", "プレイヤー名を入力してください"], [
				make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B),
				make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
			]);
		break;
		
		case POPUP_ID_GAME_STORY:
			blur_reset();
			rm_modeselect_manager.start_game = true;
			global.button_hovering_active = false;
		break;
		
		case POPUP_ID_GAME_FREE:
			blur_reset();
			rm_modeselect_manager.start_game = true;
			rm_modeselect_manager.next_room = rm_freemode;
			global.button_hovering_active = false;
		break;
		
		case POPUP_ID_GAME_CHALLENGE:
			blur_reset();
			rm_modeselect_manager.start_game = true;
			rm_modeselect_manager.next_room = rm_challengemode;
			global.button_hovering_active = false;
		break;
		
		case POPUP_ID_HOME:
			back_from_modeselect();
		break;
		
		case POPUP_ID_FREE_EXIT:
			room_goto(rm_mode_select);
		break;
		
		case POPUP_ID_FREE_CONFIRM:
			room_goto(rm_dangeon);
		break;
		
		case POPUP_ID_DANGEON_EXIT:
			show_debug_message("test");
		break;
		
		case POPUP_ID_DANGEON_GAME_EXIT:
			game_end();
		break;
	}
}