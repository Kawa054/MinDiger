function dig_block(xcell, ycell, pickaxe_power){
	//壊すタイルのINDEXを取得
	var lay_id = layer_get_id("layer_walls");
	var map_id = layer_tilemap_get_id(lay_id);
	var tile_data  = tilemap_get(map_id, xcell, ycell);
	var tile_index = tile_get_index(tile_data);
	
	//模様用
	var lay_id = layer_get_id("layer_wall_damage");
	var map_id2 = layer_tilemap_get_id(lay_id);
	var tile_data2  = tilemap_get(map_id2, xcell, ycell);
	var damage_index = tile_get_index(tile_data2);
	
	var block_type = get_wall_type(tile_index);
	if(block_type == -1 || block_type == 3){ }
	if(block_type == 0){ break_dg_block(xcell, ycell); }
	
	//一段階ブロックの場合
	if(block_type == 1){
		if(pickaxe_power >= 2){
			break_dg_block(xcell, ycell);
		}
		
		if(pickaxe_power == 1){
			//一段階亀裂
			if(damage_index == 84 || damage_index == 85){
				break_dg_block(xcell, ycell); 
			}else{
				//一段階亀裂を入れる
				if(is_sidewall(tile_index)){
					tilemap_set(map_id2, 85, xcell, ycell);
				}else{
					tilemap_set(map_id2, 84, xcell, ycell);
				}
			}
		}
	}
	
	//二段階ブロックの場合
	if(block_type == 2){
		if(pickaxe_power >= 3){
			break_dg_block(xcell, ycell);
		}
		
		if(pickaxe_power == 1){
			//二段階亀裂の場合
			if(damage_index == 84 || damage_index == 85){
				break_dg_block(xcell, ycell);
			//一段階亀裂の場合
			}else if(damage_index == 62 || damage_index == 63){
				//二段階亀裂を入れる
				if(is_sidewall(tile_index)){
					tilemap_set(map_id2, 85, xcell, ycell);
				}else{
					tilemap_set(map_id2, 84, xcell, ycell);
				}	
			}else{
				//一段階亀裂を入れる
				if(is_sidewall(tile_index)){
					tilemap_set(map_id2, 63, xcell, ycell);
				}else{
					tilemap_set(map_id2, 62, xcell, ycell);
				}
			}
		}
		
		if(pickaxe_power == 2){
			//1, 2段階亀裂の場合
			if(damage_index == 84 || damage_index == 85 || damage_index == 62 || damage_index == 63){
				break_dg_block(xcell, ycell);
			}else{
				//亀裂なし
				//2段階亀裂を入れる
				if(is_sidewall(tile_index)){
					tilemap_set(map_id2, 85, xcell, ycell);
				}else{
					tilemap_set(map_id2, 84, xcell, ycell);
				}
			}
		}
	}
}