function get_playtime(data_index){
	var file = file_text_open_read(SAVEDATA_DIR + string(data_index) + SAVEDATA_DATAFILE);
	var str = file_text_read_string(file);
	file_text_close(file);

	//データを取得
	var data = json_decode(str);
	return data[? "player_playtime"];	
}