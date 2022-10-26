function update_grid_info(){
	if(instance_exists(obj_player)){
		//グリッド情報の初期化
		ds_grid_clear(dangeon_manager.wall_shadow_grid, 0);
		
		//プレイヤーのグリッド上の座標を取得
		var lay_id = layer_get_id("layer_walls");
		var map_id = layer_tilemap_get_id(lay_id);
		px = tilemap_get_cell_x_at_pixel(map_id, obj_player.x+64, obj_player.y+64);
		py = tilemap_get_cell_y_at_pixel(map_id, obj_player.x+64, obj_player.y+64);
		
		//プレイヤー周辺の壁情報を取得
		var sx1 = floor(UPDATE_GRID_SIZE_X / 2);
		var sy1 = floor(UPDATE_GRID_SIZE_Y / 2);
		for(var i = -sx1; i <= sx1; i++){
			for(var j = -sy1; j <= sy1; j++){
				var tile_data  = tilemap_get(map_id, px+i, py+j);
				var tile_index = tile_get_index(tile_data);
				
				var color = noone;
				if(tile_index == 0){
					color = c_grey;
				}else if(is_wall(tile_index)){
					color = c_black;
				}else if(is_stair(px+i, py+j)){
					color = c_green;
				}else if(is_sidewall(tile_index)){
					color = c_dkgrey;
				}
				
				ds_grid_set(dangeon_manager.dangeon_info, px+i, py+j, color);
			}
		}
		ds_grid_set(dangeon_manager.dangeon_info, px, py, c_red);
		
		//プレイヤー周辺の壁情報を取得(影用)
		var sx2 = floor(WALL_SHADOW_UPDATE_X / 2);
		var sy2 = floor(WALL_SHADOW_UPDATE_X / 2);
		for(var i = -sx2; i <= sx2; i++){
			for(var j = -sy2; j <= sy2; j++){
				var tile_data  = tilemap_get(map_id, px+i, py+j);
				var tile_index = tile_get_index(tile_data);
				//輪郭付き壁or側面壁
				if((tile_index > 0 && tile_index <= 15) || tile_index == 17){
					ds_grid_set(dangeon_manager.wall_shadow_grid, sx2 + i, sy2 + j, 1);
				}else{
					ds_grid_set(dangeon_manager.wall_shadow_grid, sx2 + i, sy2 + j, 0);
				}
			}
		}
	}
}