function load_savedata(data_index){
	ini_open("SaveData/data" + string(data_index) + "/savedata.ini");
	//ini_write_string("savedata_info", "Exist SaveData", "1");
	ini_close();
	
	room_goto(rm_game);
}