x = window_get_width()/2 - sprite_get_width(icon_start_button)/2;
xstart = window_get_width()/2 - sprite_get_width(icon_start_button)/2;
y = START_BUTTON_Y;
ystart = START_BUTTON_Y;

hover = 0;

//クリックされたときの処理
activate_button = function() 
{
	rm_start_manager.room_stat = ROOM_START_STAT_DATAS;
	instance_deactivate_object(id);
}

//ホバーしているときの処理
hovering_button = function() 
{
	hover = lerp(hover, hovering, 0.2);
	y = lerp(y, ystart - hovering * 4, 0.2);
}

//ホバーしていない場合の処理
not_hovering_button = function(){
	y = lerp(y, ystart, 0.2);
}