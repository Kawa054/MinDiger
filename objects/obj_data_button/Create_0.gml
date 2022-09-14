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

//クリックされたときの処理
activate_button = function() 
{
	var _fx_struct1 = layer_get_fx( "blur_effect");
	var _fx_struct2 = layer_get_fx("color_effect");
	fx_set_parameter(_fx_struct1, "g_LinearBlurVector", [0, 0]);
	fx_set_parameter(_fx_struct2, "g_Intensity", 0);
	rm_start_manager.room_stat = ROOM_START_STAT_LOADING;
	rm_start_manager.room_timer = 0;
	instance_deactivate_layer(layer_get_id("GUI"));
}

//ホバーしているときの処理
hovering_button = function() 
{
	hover = lerp(hover, hovering, 0.1);
	y = lerp(y, ystart - hovering * 4, 0.1);
}

//ホバーしていない場合の処理
not_hovering_button = function(){
	hover = lerp(hover, hovering, 0.1);
	y = lerp(y, ystart, 0.1);
}