function load_settings(data_index){
	var file = file_text_open_read(SAVEDATA_DIR + string(data_index) + SAVEDATA_DATAFILE);
	var str = file_text_read_string(file);
	file_text_close(file);

	//データを取得
	var data = json_decode(str);
	
	global.setting_key_W = data[? "setting_key_W"];
	global.setting_key_A = data[? "setting_key_A"];
	global.setting_key_S = data[? "setting_key_S"];
	global.setting_key_D = data[? "setting_key_D"];
	global.setting_key_talk = data[? "setting_key_talk"];

	//0 = OFF, 1 == ON
	global.setting_video_hideUI = data[? "setting_video_hideUI"];
	global.setting_video_hideKeyNavigation = data[? "setting_video_hideKeyNavigation"];
	global.setting_video_hideESCNavigation = data[? "setting_video_hideESCNavigation"];
	
	global.setting_volume_main = data[? "setting_volume_main"];
	global.setting_volume_sfx = data[? "setting_volume_sfx"];
	
	
}