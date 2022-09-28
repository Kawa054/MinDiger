function create_playerdata(data_index, player_name){	
	
	//プレイヤーデータの生成
	var map = ds_map_create();
	map[? "data_index"] = data_index;
	map[? "data_exist"] = 1;
	map[? "player_name"] = player_name;
	map[? "player_playtime"] = "00:00:00";

	// JSON文字列に変換
	var str = json_encode(map);

	// "save.json" に書き込み
	var file = file_text_open_write(SAVEDATA_DIR + string(data_index) + SAVEDATA_DATAFILE);
	file_text_write_string(file, str);
	file_text_close(file);

	// ds_mapを消しておく
	ds_map_destroy(map);
	
	global.created_data = true;
	room_restart();
}