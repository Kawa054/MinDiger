#macro DATA_BUTTON_TYPE_EXISTDATA 0
#macro DATA_BUTTON_TYPE_NODATA 1

chara_image_width = sprite_get_width(icon_data_select_chara);
chara_image_height = sprite_get_height(icon_data_select_chara);
story_icon_size = sprite_get_width(icon_data_select_bottom1);
width = DATA_SELECT_BUTTON_WIDTH;
height = chara_image_height + 2*DATA_SELECT_CHARA_IMAGE_MARGIN;

player_name = "aAA";
player_playtime = "AA";

data_index = 0;
type = 0;
hover = 0;

sp_sizeX = sprite_get_width(icon_delete);
sp_sizeY = sprite_get_height(icon_delete);
hover_duplicate_button = false;
hover_delete_button = false;
hover_plus_button = false;

del_icon = icon_delete;
dup_icon = icon_duplicate;
plus_icon = icon_plus;

//クリックされたときの処理
activate_button = function() 
{
	global.selected_data_index = data_index;
	if(hover_duplicate_button){
		create_popup(POPUP_ID_COPY, POPUP_INFOTYPE_COPY, POPUP_RESPONSETYPE_YN, ["コピーしますか?"], [
			make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
		]);
	}else if(hover_delete_button){
		create_popup(POPUP_ID_DELETE, POPUP_INFOTYPE_CARE, POPUP_RESPONSETYPE_YN, ["【DATA" + string(data_index) + " : " + get_playername(data_index) +"】", "消しますか？"], [
		    c_black, 
			make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
		]);
	}else if(hover_plus_button){
		create_popup(POPUP_ID_PLUS, POPUP_INFOTYPE_INFO, POPUP_RESPONSETYPE_YN, ["", "データを追加しますか？"], [
		    c_black, 
			make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
		]);		
	}else{
		load_savedata(data_index);
		blur_reset();
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
	
	switch(type){
		case DATA_BUTTON_TYPE_EXISTDATA:
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
		break;
		
		case DATA_BUTTON_TYPE_NODATA:
			if(mx >= x + width/2  - sp_sizeX/2 &&
			   mx <= x + width/2  + sp_sizeX/2 &&
			   my >= y + height/2 - sp_sizeY/2 &&
			   my <= y + height/2 + sp_sizeY/2
			 ){
				hover_plus_button = true;
				plus_icon = icon_plus_hover;
			}else{
				hover_plus_button = false;
				plus_icon = icon_plus;
			}
		break;	
	}
	
	hover = lerp(hover, hovering, 0.1);
	y = lerp(y, ystart - hovering * 4, 0.1);
}

//ホバーしていない場合の処理
not_hovering_button = function(){
	hover = lerp(hover, hovering, 0.1);
	y = lerp(y, ystart, 0.1);
	
	switch(type){
		case DATA_BUTTON_TYPE_EXISTDATA:
			hover_duplicate_button = false;
			hover_delete_button = false;
			del_icon = icon_delete;
			dup_icon = icon_duplicate;
		break;
		case DATA_BUTTON_TYPE_NODATA:
			hover_plus_button = false;
			plus_icon = icon_plus;
		break;
	}
}