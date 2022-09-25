chara_image_width = sprite_get_width(icon_data_select_chara);
chara_image_height = sprite_get_height(icon_data_select_chara);
story_icon_size = sprite_get_width(icon_data_select_bottom1);
width = DATA_SELECT_BUTTON_WIDTH;
height = chara_image_height + 2*DATA_SELECT_CHARA_IMAGE_MARGIN;

player_name = "aAA";
player_playtime = "AA";

i = 0;
type = 0;
hover = 0;

sp_sizeX = sprite_get_width(icon_delete);
sp_sizeY = sprite_get_height(icon_delete);
hover_duplicate_button = false;
hover_delete_button = false;

del_icon = icon_delete;
dup_icon = icon_duplicate;

//クリックされたときの処理
activate_button = function() 
{
	if(hover_duplicate_button){
		
	}else if(hover_delete_button){
		
	}else{
		var _fx_struct1 = layer_get_fx( "blur_effect");
		var _fx_struct2 = layer_get_fx("color_effect");
		fx_set_parameter(_fx_struct1, "g_LinearBlurVector", [0, 0]);
		fx_set_parameter(_fx_struct2, "g_Intensity", 0);
		rm_start_manager.room_stat = ROOM_START_STAT_LOADING;
		rm_start_manager.room_timer = 0;
		instance_deactivate_layer(layer_get_id("GUI"));
	}
}

//ホバーしているときの処理
hovering_button = function() 
{
	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);
	
	if(mx >= x + width - 2*(sp_sizeX + DATA_SELECT_BUTTON_ICON_SEP_X) - DATA_SELECT_BUTTON_ICON_MARGIN_X &&
	   mx <= x + width - 2*(sp_sizeX + DATA_SELECT_BUTTON_ICON_SEP_X) - DATA_SELECT_BUTTON_ICON_MARGIN_X + sp_sizeX &&
	   my >= y+DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_height-sp_sizeY &&
	   my <= y+DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_height
	 ){ 	   
		del_icon = icon_delete_hover;
		hover_delete_button = true;
	}else if(
		mx >= x + width - 1*(sp_sizeX + DATA_SELECT_BUTTON_ICON_SEP_X) - DATA_SELECT_BUTTON_ICON_MARGIN_X &&
		mx <= x + width - 1*(sp_sizeX + DATA_SELECT_BUTTON_ICON_SEP_X) - DATA_SELECT_BUTTON_ICON_MARGIN_X + sp_sizeX &&
		my >= y+DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_height-sp_sizeY &&
		my <= y+DATA_SELECT_CHARA_IMAGE_MARGIN+chara_image_height
	){
		dup_icon = icon_duplicate_hover;
		hover_duplicate_button = true;
	}else{
		hover_duplicate_button = false;
		hover_delete_button = false;
		del_icon = icon_delete;
		dup_icon = icon_duplicate;
	}
	
	hover = lerp(hover, hovering, 0.1);
	y = lerp(y, ystart - hovering * 4, 0.1);
}

//ホバーしていない場合の処理
not_hovering_button = function(){
	hover = lerp(hover, hovering, 0.1);
	y = lerp(y, ystart, 0.1);
}