// @param directory
function create_savedata_file(argument0){
	var dir = argument0;
	ini_open(dir + "/savedata.ini");
	ini_write_string("savedata_info", "Exist SaveData", "0");
	ini_write_string("savedata_info", "Player Name", "None")
	ini_close();
}