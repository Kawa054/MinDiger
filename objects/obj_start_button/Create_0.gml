x = window_get_width()/2 - sprite_get_width(icon_start_button)/2;
xstart = window_get_width()/2 - sprite_get_width(icon_start_button)/2;
y = START_BUTTON_Y;
ystart = START_BUTTON_Y;

width = sprite_get_width(icon_start_button);
height = sprite_get_height(icon_start_button);
hover = 0;

//クリックされたときの処理
activate_button = function() 
{
	rm_start_manager.room_stat = ROOM_START_STAT_DATAS;
	rm_start_manager.room_timer = 0;
	instance_deactivate_object(id);
	instance_deactivate_object(obj_exit_button);
}


//ホバーしているときの処理
hovering_button = function() 
{
	hover = lerp(hover, hovering, 0.1);
	y = lerp(y, ystart - hovering * 2, 0.1);
	sprite_index = icon_start_button_hover;
}

//ホバーしていない場合の処理
not_hovering_button = function(){
	hover = lerp(hover, hovering, 0.1);
	y = lerp(y, ystart, 0.1);
	sprite_index = icon_start_button;
}