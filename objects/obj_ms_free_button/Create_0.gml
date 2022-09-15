width = sprite_get_width(spr_mode_free);
height = sprite_get_height(spr_mode_free);
hover = 0;

//クリックされたときの処理
activate_button = function() 
{
	rm_start_manager.room_stat = ROOM_START_STAT_DATAS;
	rm_start_manager.room_timer = 0;
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
	hover = lerp(hover, hovering, 0.2);
	y = lerp(y, ystart, 0.2);
}