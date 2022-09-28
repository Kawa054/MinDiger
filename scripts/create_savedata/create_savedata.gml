function create_savedata(){
	//セーブデータのフォルダが存在しない場合, セーブデータ関連のファイルを作成する.
	if !directory_exists(SAVEDATA_DIR){
		for(var i = 1; i <= SAVEDATA_NUM; i++){
			if !directory_exists(SAVEDATA_DIR + string(i)){
				directory_create(SAVEDATA_DIR + string(i));
				
				//初期データの生成
				var map = ds_map_create();
				map[? "data_index"] = i;
				map[? "data_exist"] = 0;
				map[? "player_name"] = "";
				map[? "player_playtime"] = "00:00:00";

				// JSON文字列に変換
				var str = json_encode(map);

				// "save.json" に書き込み
				var file = file_text_open_write(SAVEDATA_DIR + string(i) + SAVEDATA_DATAFILE);
				file_text_write_string(file, str);
				file_text_close(file);

				// ds_mapを消しておく
				ds_map_destroy(map);
			}
		}
	}
}