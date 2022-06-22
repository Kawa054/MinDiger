function create_datasend_button(){
	var _x = argument[0];
	var _y = argument[1];
	var _width = argument[2];
	var _height = argument[3];
	var _text = argument[4];
	var _script = argument[5];
	var _arguments = argument[6];
	
	var _button = instance_create_layer(_x, _y, "Instances", obj_datasend_button);
	with(_button){
		width = _width;
		height = _height;
		text = _text;
		ascript = _script;
		arguments = _arguments;
	}
	
	return _button;
}