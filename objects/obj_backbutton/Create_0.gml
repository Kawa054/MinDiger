x = BACK_BUTTON_X;
y = BACK_BUTTON_Y;
xstart = BACK_BUTTON_X;
ystart = BACK_BUTTON_Y;

state = 0;

//クリックされたときの処理
activate_button = function() 
{
	switch(rm_start_manager.room_stat){
		case ROOM_START_STAT_DATAS:
			rm_start_manager.room_stat = ROOM_START_STAT_PREPARE;
			instance_activate_object(obj_start_button);
		break;
	}
}

//ホバーしていないときの処理
not_hovering_button = function() 
{
	sprite_index = icon_backbutton;
}

//ホバーしているときの処理
hovering_button = function() 
{
	sprite_index = icon_backbutton_hover;
}
