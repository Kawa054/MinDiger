switch(room_stat){
	//スタート直後の画面
	case ROOM_START_STAT_PREPARE:
		var lay_id = layer_get_id("Background");
		var back_id = layer_background_get_id(lay_id);
		layer_background_sprite(back_id, spr_notitle_background);
		if(!is_setting_opening){
			layer_background_sprite(back_id, spr_title_background);
			instance_activate_object(obj_start_button);
			instance_activate_object(obj_settings_button);
		}
	break;
	
	//データ選択画面
	case ROOM_START_STAT_DATAS:
		if(!is_setting_opening){
			instance_activate_object(obj_backbutton);
		}
		if(room_timer == 0){
			var lay_id = layer_get_id("Background");
			var back_id = layer_background_get_id(lay_id);
			layer_background_sprite(back_id, spr_notitle_background);
		}
		room_timer++;
		if(room_timer <= START_BACKGROUND_EFFECT_TIME*60){
			//背景にブラー効果を加える
			var blur_amount = room_timer / (START_BACKGROUND_EFFECT_TIME*60);
			var _fx_struct1 = layer_get_fx( "blur_effect");
			var _fx_struct2 = layer_get_fx("color_effect");
			fx_set_parameter(_fx_struct1, "g_LinearBlurVector", [START_BACKGROUND_BLUR_SIZE_X*blur_amount, START_BACKGROUND_BLUR_SIZE_Y*blur_amount]);
			fx_set_parameter(_fx_struct2, "g_Intensity", START_BACKGROUND_COLOR_INTENSITY*blur_amount);
			fx_set_parameter(_fx_struct2, "g_TintCol", [START_BACKGROUND_COLOR_R, START_BACKGROUND_COLOR_G, START_BACKGROUND_COLOR_B, START_BACKGROUND_COLOR_ALPHA]);
			
			if(room_timer == START_BACKGROUND_EFFECT_TIME*60){
				for(var i = 0; i < SAVEDATA_NUM; i++){
					instance_activate_object(dataselectbuttons[i]);
				}
			}
		}else if(room_timer >= START_BACKGROUND_EFFECT_TIME*60 && room_timer < START_BACKGROUND_EFFECT_TIME*60 + 10.0){
			//ボタンの方のGUIに書く
			for(var i = 1; i <= SAVEDATA_NUM; i++){		
				var button_width = lerp(DATA_SELECT_BUTTON_WIDTH*0.9, DATA_SELECT_BUTTON_WIDTH, (room_timer-START_BACKGROUND_EFFECT_TIME*60)/10.0);
				var tmp = sprite_get_height(icon_data_select_chara) + 2*DATA_SELECT_CHARA_IMAGE_MARGIN;
				var button_height = lerp(tmp*0.9, tmp, (room_timer-START_BACKGROUND_EFFECT_TIME*60)/10.0);
				var select_data_x = display_get_gui_width() / 2 - button_width/2;
				var select_data_y = (display_get_gui_height() - (3*DATA_SELECT_BUTTON_SEP_Y + 4*button_height))/2;
				dataselectbuttons[i-1].x = select_data_x;
				dataselectbuttons[i-1].y = select_data_y + (i-1)*(DATA_SELECT_BUTTON_SEP_Y + button_height);
				dataselectbuttons[i-1].width = button_width;
				dataselectbuttons[i-1].height = button_height;
			}
		}else{
			if(room_timer == START_BACKGROUND_EFFECT_TIME*60 + 10.0){
				for(var i = 1; i <= SAVEDATA_NUM; i++){
					var button_width = DATA_SELECT_BUTTON_WIDTH;
					var button_height = (sprite_get_height(icon_data_select_chara) + 2*DATA_SELECT_CHARA_IMAGE_MARGIN);
					var select_data_x = display_get_gui_width() / 2 - button_width/2;
					var select_data_y = (display_get_gui_height() - (3*DATA_SELECT_BUTTON_SEP_Y + 4*button_height))/2;
					dataselectbuttons[i-1].x = select_data_x;
					dataselectbuttons[i-1].y = select_data_y + (i-1)*(DATA_SELECT_BUTTON_SEP_Y + button_height);
					dataselectbuttons[i-1].ystart = select_data_y + (i-1)*(DATA_SELECT_BUTTON_SEP_Y + button_height);
					dataselectbuttons[i-1].width = button_width;
					dataselectbuttons[i-1].height = button_height;
				}
			}
		}
	break;
	
	case ROOM_START_STAT_LOADING:
		instance_deactivate_layer(layer_get_id("GUI"));
		room_timer++;
		if(room_timer <= LOADING_START_TIME*60){
			draw_set_colour(c_black);
			draw_set_alpha(room_timer / (LOADING_START_TIME*60));
			draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
			draw_set_alpha(1);
			if(room_timer == LOADING_START_TIME*60){
				var lay_id = layer_get_id("Background");
				var back_id = layer_background_get_id(lay_id);
				layer_background_sprite(back_id, spr_background_black);
			}
		}else if(room_timer > LOADING_START_TIME*60 && room_timer <= (LOADING_START_TIME + LOADING_MIN_TIME)*60){
			var lay_id = layer_get_id("Background");
			var back_id = layer_background_get_id(lay_id);
			layer_background_sprite(back_id, spr_loading);
		}else if(room_timer > (LOADING_START_TIME + LOADING_MIN_TIME)*60 && room_timer <= (2*LOADING_START_TIME + LOADING_MIN_TIME)*60){
			draw_set_colour(c_black);
			draw_set_alpha( (room_timer - (LOADING_START_TIME + LOADING_MIN_TIME)*60) / (LOADING_START_TIME*60) );
			draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
			draw_set_alpha(1);
		}else{
			room_goto(rm_mode_select);
		}
	break;
	
	default:
	break;
}