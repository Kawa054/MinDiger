function create_dataselect_button(){
	var _x = argument[0];
	var _y = argument[1];
	var _type = argument[2];
	var _width = argument[3];
	var _height = argument[4];
	var _player_name = argument[5];
	var _player_playtime = argument[6];
	var _arguments = argument[7];
	var _script = argument[8];
	
	var _button = instance_create_layer(_x, _y, "Instances", obj_dataselect_button);
	with(_button){
		type = _type;
		width = _width;
		height = _height;
		player_name = _player_name;
		player_playtime = _player_playtime;
		arguments = _arguments;
		ascript = _script;
	}
	
	return _button;
}