function create_savedata(data_index){
	ini_open("SaveData/data" + string(data_index) + "/savedata.ini");
	ini_write_string("savedata_info", "Exist SaveData", "1");
	ini_close();
	load_savedata(data_index);
}