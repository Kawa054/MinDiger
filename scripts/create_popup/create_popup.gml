// info_type      information type
// response_type  only yes or no, or both

function create_popup(popup_id, info_type, response_type, sentence, colors){
	
	var _x =  display_get_gui_width() / 2;
	var _y =  display_get_gui_height() / 2;
	var lay_id = layer_get_id("GUI_upper");
	
	var obj = instance_create_layer(_x - POPUP_WIDTH/2, _y - POPUP_HEIGHT/2, lay_id, obj_popup);
	obj.popup_id = popup_id;
	obj.info_type = info_type;
	obj.response_type = response_type;
	obj.sentence = sentence;
	obj.colors = colors;
}