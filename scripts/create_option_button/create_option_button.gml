function create_option_button(){
	var _x = argument[0];
	var _y = argument[1];
	var _width = argument[2];
	var _height = argument[3];
	var _script = argument[5];
	
	var _button = instance_create_layer(_x, _y, "Instances", create_option_button);
	with(_button){
		width = _width;
		height = _height;
		ascript = _script;
	}
	
	return _button;
}