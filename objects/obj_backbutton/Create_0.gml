x = BACK_BUTTON_X;
y = BACK_BUTTON_Y;
xstart = BACK_BUTTON_X;
ystart = BACK_BUTTON_Y;

width = sprite_get_width(icon_backbutton);
height = sprite_get_height(icon_backbutton);

state = 0;

//クリックされたときの処理
activate_button = function() 
{
	//関数にする
	if(room == rm_start){
		if(rm_start_manager.is_setting_opening){
			instance_deactivate_object(obj_setting_menu);
			instance_deactivate_object(id);
			instance_activate_object(obj_settings_button);
			rm_start_manager.is_setting_opening = false;
			exit;
		}
		switch(rm_start_manager.room_stat){
			case ROOM_START_STAT_DATAS:
				var _fx_struct1 = layer_get_fx( "blur_effect");
				var _fx_struct2 = layer_get_fx("color_effect");
				fx_set_parameter(_fx_struct1, "g_LinearBlurVector", [0, 0]);
				fx_set_parameter(_fx_struct2, "g_Intensity", 0);
			
				var button_width = DATA_SELECT_BUTTON_WIDTH*0.9;
				var button_height = ((sprite_get_height(icon_data_select_chara) + 2*DATA_SELECT_CHARA_IMAGE_MARGIN))*0.9;
				var select_data_x = display_get_gui_width() / 2 - button_width/2;
				var select_data_y = (display_get_gui_height() - (3*DATA_SELECT_BUTTON_SEP_Y + 4*button_height))/2;
				for(var i = 0; i < SAVEDATA_NUM; i++){			
					rm_start_manager.dataselectbuttons[i].x = select_data_x;
					rm_start_manager.dataselectbuttons[i].xstart = select_data_x;
					rm_start_manager.dataselectbuttons[i].y = select_data_y + (i)*(DATA_SELECT_BUTTON_SEP_Y + button_height);
					rm_start_manager.dataselectbuttons[i].ystart = select_data_y + (i)*(DATA_SELECT_BUTTON_SEP_Y + button_height);
					rm_start_manager.dataselectbuttons[i].width = button_width;
					rm_start_manager.dataselectbuttons[i].height = button_height;
					instance_deactivate_object(rm_start_manager.dataselectbuttons[i]);
				}
				rm_start_manager.room_stat = ROOM_START_STAT_PREPARE;
				instance_activate_object(obj_start_button);
				instance_deactivate_object(id);
			break;
		}
		exit;
	}
	
	if(room == rm_mode_select){
		//設定が開いていたら
		if(rm_modeselect_manager.is_setting_opening){
			instance_deactivate_object(obj_setting_menu);
			instance_activate_object(id);
			instance_activate_object(obj_settings_button);
			rm_modeselect_manager.is_setting_opening = false;
			exit;
		}
		
		create_popup(POPUP_ID_HOME, POPUP_INFOTYPE_INFO, POPUP_RESPONSETYPE_YN,  ["", "タイトル画面へ戻りますか？"], [
			make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B),
			make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
		]);
		
		exit;
	}
	
	if(room == rm_freemode){
		create_popup(POPUP_ID_FREE_EXIT, POPUP_INFOTYPE_INFO, POPUP_RESPONSETYPE_YN,  ["", "モード選択画面へ戻りますか？"], [
			make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B),
			make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
		]);
		
		exit;
	}
}

//ホバーしていないときの処理
not_hovering_button = function() 
{
	sprite_index = icon_home;
}

//ホバーしているときの処理
hovering_button = function() 
{
	sprite_index = icon_home_hover;
}
