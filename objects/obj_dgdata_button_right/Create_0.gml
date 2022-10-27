width = sprite_get_width(icon_dgdata_right);
height = sprite_get_height(icon_dgdata_right);

x = window_get_width() - 250;
y = (window_get_height() - height) / 2;
xstart = window_get_width() - 250;
ystart = (window_get_height() - height) / 2;

state = 0;

//クリックされたときの処理
activate_button = function() 
{
	if(instance_exists(rm_free_manager)){
		if(rm_free_manager.free_dangeon_id + 1 > DANGEON_NUM){
			rm_free_manager.free_dangeon_id = DANGEON_NUM;
			instance_deactivate_object(id);
		}else{
			rm_free_manager.free_dangeon_id += 1;
		}
	}
}

//ホバーしていないときの処理
not_hovering_button = function() 
{
	if(instance_exists(rm_free_manager)){
		if(rm_free_manager.free_dangeon_id == DANGEON_NUM){
			instance_deactivate_object(id);
		}else if(rm_free_manager.free_dangeon_id > 0){
			instance_activate_object(obj_dgdata_button_left);
		}
	}
	sprite_index = icon_dgdata_right;
}

//ホバーしているときの処理
hovering_button = function() 
{
	if(instance_exists(rm_free_manager)){
		if(rm_free_manager.free_dangeon_id == DANGEON_NUM){
			instance_deactivate_object(id);
		}else if(rm_free_manager.free_dangeon_id > 0){
			instance_activate_object(obj_dgdata_button_left);
		}
	}
	sprite_index = icon_dgdata_right_hover;
}
