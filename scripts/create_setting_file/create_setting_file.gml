// @param directory
function create_setting_file(argument0){
	var dir = argument0;
	ini_open(dir + "/settings.ini");
	ini_write_real("General", "Volume", 0);
	ini_write_string("Keyboard", "action0", "W");
	ini_close();
}