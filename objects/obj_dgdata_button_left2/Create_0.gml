width = sprite_get_width(icon_dgdata_left);
height = sprite_get_height(icon_dgdata_left);

x = 200;
y = (window_get_height() - height) / 2;
xstart = 200;
ystart = (window_get_height() - height) / 2;

state = 0;

//クリックされたときの処理
activate_button = function() 
{
	if(instance_exists(rm_challenge_manager)){
		if(rm_challenge_manager.challenge_dangeon_id - 1 < 0){
			rm_challenge_manager.challenge_dangeon_id = 0;
			instance_deactivate_object(id);
		}else{
			rm_challenge_manager.challenge_dangeon_id -= 1;
		}
	}
}

//ホバーしていないときの処理
not_hovering_button = function() 
{
	if(instance_exists(rm_challenge_manager)){
		if(rm_challenge_manager.challenge_dangeon_id == 0){
			instance_deactivate_object(id);
		}else if(rm_challenge_manager.challenge_dangeon_id < DANGEON_CHALLENGE_NUM){
			instance_activate_object(obj_dgdata_button_right2);
		}
	}
	sprite_index = icon_dgdata_left;
}

//ホバーしているときの処理
hovering_button = function() 
{
	if(instance_exists(rm_challenge_manager)){
		if(rm_challenge_manager.challenge_dangeon_id == 0){
			instance_deactivate_object(id);
		}else if(rm_challenge_manager.challenge_dangeon_id < DANGEON_CHALLENGE_NUM){
			instance_activate_object(obj_dgdata_button_right2);
		}
	}
	sprite_index = icon_dgdata_left_hover;
}
