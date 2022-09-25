// info_type      information type
// response_type  only yes or no, or both

function create_popup(info_type, response_type, sentence){
	
	var x =  display_get_gui_width() / 2;
	var y =  display_get_gui_height() / 2;
	var lay_id = layer_get_id("GUI_upper");
	
	var object = instance_create_layer(x - POPUP_WIDTH/2, y - POPUP_HEIGHT/2, lay_id, obj_popup);
	object.info_type = info_type;
	object.response_type = response_type;
	object.sentence = sentence;
}