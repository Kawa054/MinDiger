function save_settings(data_index){
	global.setting_key_W = obj_setting_menu.setting_key_W;
	global.setting_key_A = obj_setting_menu.setting_key_A;
	global.setting_key_S = obj_setting_menu.setting_key_S;
	global.setting_key_D = obj_setting_menu.setting_key_D;
	global.setting_key_talk = obj_setting_menu.setting_key_talk;

	//0 = OFF, 1 == ON
	global.setting_video_hideUI = obj_setting_menu.setting_video_hideUI;
	global.setting_video_hideKeyNavigation = obj_setting_menu.setting_video_hideKeyNavigation;
	global.setting_video_hideESCNavigation = obj_setting_menu.setting_video_hideESCNavigation;
	
	global.setting_volume_main = obj_setting_menu.setting_volume_main;
	global.setting_volume_sfx = obj_setting_menu.setting_volume_sfx;
	
	var file = file_text_open_read(SAVEDATA_DIR + string(data_index) + SAVEDATA_DATAFILE);
	var str = file_text_read_string(file);
	file_text_close(file);
	
	//データを取得
	var data = json_decode(str);
	data[? "setting_key_W"] = global.setting_key_W;
	data[? "setting_key_A"] = global.setting_key_A;
	data[? "setting_key_S"] = global.setting_key_S;
	data[? "setting_key_D"] = global.setting_key_D;
	data[? "setting_key_talk"] = global.setting_key_talk;
	
	data[? "setting_video_hideUI"] = global.setting_video_hideUI;
	data[? "setting_video_hideKeyNavigation"] = global.setting_video_hideKeyNavigation;
	data[? "setting_video_hideESCNavigation"] = global.setting_video_hideESCNavigation;

	data[? "setting_volume_main"] = global.setting_volume_main;
	data[? "setting_volume_sfx"] = global.setting_volume_sfx;

	// JSON文字列に変換
	str = json_encode(data);

	// "save.json" に書き込み
	file = file_text_open_write(SAVEDATA_DIR + string(data_index) + SAVEDATA_DATAFILE);
	file_text_write_string(file, str);
	file_text_close(file);

	// ds_mapを消しておく
	ds_map_destroy(data);
}