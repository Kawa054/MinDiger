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
	case ROOM_START_STAT_PREPARE:
		draw_text(500, 600 ,"press any key to start");
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
	
	case ROOM_START_STAT_DATAS:
		if(!is_menu_opening){
			is_menu_opening = true;
			for(var i = 1; i <= SAVEDATA_NUM; i++){
				ini_open("SaveData/data" + string(i) + "/savedata.ini");
				var is_exist_save_data = ini_read_string("savedata_info", "Exist SaveData", "-1");
				ini_close();
				
				//セーブデータがない場合の処理(TODO: -1の場合を書く)
				if(is_exist_save_data == "0"){
					create_simple_button(select_data_x, select_data_y + (i-1)*data_button_sep_y, data_button_width, data_button_height, "No Data", create_savedata());
				}else{
					create_simple_button(select_data_x, select_data_y + (i-1)*data_button_sep_y, data_button_width, data_button_height, "Data" + string(i), load_savedata());	
				}
			}
		}
	break;
	
	default:
	break;
}