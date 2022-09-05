var select_button_x = room_width / 2;
var select_button_y = room_height / 2 - 200;
var button_width = 200;
var button_height = 100;
var button_sep_y = 130;

var select_data_x = 500;
var select_data_y = 100;
var data_button_width = 200;
var data_button_height = 100;
var data_button_sep_y = 120;


switch(room_stat){
	//スタート直後の画面
	case ROOM_START_STAT_PREPARE:
		//背景画面とボタンの描画
		draw_sprite_stretched(spr_title_background, 0, 0, 0, window_get_width(), window_get_height());
		create_simple_button(window_get_width()/2, 700, START_BUTTON_WIDTH, START_BUTTON_HEIGHT, "start", on_click_start);
	break;
	
	case ROOM_START_STAT_SELECT:
		if(!is_menu_opening){
			is_menu_opening = true;
			create_simple_button(select_button_x, select_button_y + 0*button_sep_y, button_width, button_height, "play",	on_click_play);
			create_simple_button(select_button_x, select_button_y + 1*button_sep_y, button_width, button_height, "settings",on_click_settings);
			create_simple_button(select_button_x, select_button_y + 2*button_sep_y, button_width, button_height, "exit",	on_click_exit);
		}
	break;

	//データ選択画面
	case ROOM_START_STAT_DATAS:
		room_timer++;
		if(room_timer <= START_BACKGROUND_EFFECT_TIME*60){
			//背景にブラー効果を加える
			var blur_amount = room_timer / (START_BACKGROUND_EFFECT_TIME*60);
			var _fx_struct1 = layer_get_fx( "blur_effect");
			var _fx_struct2 = layer_get_fx("color_effect");
			fx_set_parameter(_fx_struct1, "g_LinearBlurVector", [START_BACKGROUND_BLUR_SIZE_X*blur_amount, START_BACKGROUND_BLUR_SIZE_Y*blur_amount]);
			fx_set_parameter(_fx_struct2, "g_Intensity", START_BACKGROUND_COLOR_INTENSITY*blur_amount);
			fx_set_parameter(_fx_struct2, "g_TintCol", [START_BACKGROUND_COLOR_R, START_BACKGROUND_COLOR_G, START_BACKGROUND_COLOR_B, START_BACKGROUND_COLOR_ALPHA]);
			/*
			//横方向のブラーを適用
			shader_set(shd_blur);
			var blur_h = shader_get_uniform(shd_blur_horizontal, "blur_amount");
			var resolution_h = shader_get_uniform(shd_blur_horizontal, "resolution");
			shader_set_uniform_f(blur_h, blur_amount);
			shader_set_uniform_f(resolution_h, display_get_width(), display_get_height());
			surface_set_target(application_surface); //Set the surface
			draw_surface(application_surface, 0, 0);
			shader_reset();
			surface_reset_target();
			
			//縦方向のブラーを適用
			shader_set(shd_blur_vertical);
			var blur_v = shader_get_uniform(shd_blur_vertical, "blur_amount");
			var resolution_v = shader_get_uniform(shd_blur_vertical, "resolution");
			shader_set_uniform_f(blur_v, blur_amount);
			shader_set_uniform_f(resolution_v, display_get_width(), display_get_height());
			draw_surface(application_surface, 0, 0);
			shader_reset();
			*/
		}else{
			if(!is_menu_opening){
				is_menu_opening = true;
				for(var i = 1; i <= SAVEDATA_NUM; i++){
					ini_open("SaveData/data" + string(i) + "/savedata.ini");
					var is_exist_save_data = ini_read_string("savedata_info", "Exist SaveData", "-1");
					ini_close();
				
					//セーブデータがない場合の処理(TODO: -1の場合を書く)
					if(is_exist_save_data == "0"){
						create_datasend_button(select_data_x, select_data_y + (i-1)*data_button_sep_y, data_button_width, data_button_height, "No Data", create_savedata, i);
					}else{
						create_datasend_button(select_data_x, select_data_y + (i-1)*data_button_sep_y, data_button_width, data_button_height, "Data" + string(i), load_savedata, i);	
					}
				}
			}
		}
	break;
	
	default:
	break;
}