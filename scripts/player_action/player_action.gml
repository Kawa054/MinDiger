function player_action(x_direction, y_direction){
	if(hold_item_index == -1){
		is_using_pickaxe = true;
		alarm[0] = 20;
		if(room == rm_dangeon){
			if is_wall_at_cell(floor(px + x_direction*0.5), floor(py + y_direction*0.7)){
				dig_block(floor(px + x_direction*0.5), floor(py + y_direction*0.7), get_pickaxe_diglevel(pickaxe_id));
			}
		}
	}
	
	//松明をセット
	if(hold_item_index == 0){
		if(inventory[hold_item_index] >= 1){
			var lay_id = layer_get_id("layer_walls");
			var map_id = layer_tilemap_get_id(lay_id);
			var tile_data  = tilemap_get(map_id, floor(px + x_direction*0.5), floor(py + y_direction*0.7));
			var tile_index = tile_get_index(tile_data);
			if(is_sidewall(tile_index)){
				inventory[hold_item_index]--;
				instance_create_layer(128*floor(px + x_direction*0.5), 128*floor(py + y_direction*0.7), "layer_wall_upper", obj_torch);
			}
		}
	}
}