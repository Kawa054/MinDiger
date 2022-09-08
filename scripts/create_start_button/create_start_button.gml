function create_start_button(){
	var _x = argument[0];
	var _y = argument[1];
	var _script = argument[2];
	var _arguments = argument[3];
	
	var _button = instance_create_layer(_x, _y, "Instances", obj_start_button);
	with(_button){
		width = sprite_get_width(icon_start_button);
		height = sprite_get_height(icon_start_button);
		ascript = _script;
		arguments = _arguments;
	}
	
	return _button;
}