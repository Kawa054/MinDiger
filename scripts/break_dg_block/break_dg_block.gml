function break_dg_block(xcell, ycell){
	//壊すタイルのINDEXを取得
	var lay_id = layer_get_id("layer_walls");
	var map_id = layer_tilemap_get_id(lay_id);
	var tile_data  = tilemap_get(map_id, xcell, ycell);
	var tile_index = tile_get_index(tile_data);
	
	//模様用
	var lay_id = layer_get_id("layer_walls_pattern");
	var map_id2 = layer_tilemap_get_id(lay_id);
	
	//亀裂用
	var lay_id = layer_get_id("layer_wall_damage");
	var map_id3 = layer_tilemap_get_id(lay_id);
	
	//地面タイルと側面壁の取得
	var ground = 0;
	var wall = 17;
	
	//側面壁の場合
	if(is_sidewall(tile_index)){
		var tile_data_y2 = tilemap_get(map_id, xcell, ycell - 2);
		if(is_wall(tile_get_index(tile_data_y2))){
			//Y-2が壁の場合
			tilemap_set(map_id, ground, xcell, ycell);
			tilemap_set_sidewall(map_id, xcell, ycell - 1);
			
			tilemap_set(map_id2, ground, xcell, ycell);
			tilemap_set(map_id2, ground, xcell, ycell - 1);
			tilemap_set(map_id3, ground, xcell, ycell);
		}else{
			//Y-2が地面の場合
			tilemap_set(map_id, ground, xcell, ycell);
			tilemap_set(map_id, ground, xcell, ycell - 1);
			
			tilemap_set(map_id2, ground, xcell, ycell);
			tilemap_set(map_id2, ground, xcell, ycell - 1);
			tilemap_set(map_id3, ground, xcell, ycell);
			tilemap_set(map_id3, ground, xcell, ycell - 1);
			
		}
	}
	
	var d = [
		tile_get_index(tilemap_get(map_id, xcell, ycell - 2)),
		tile_get_index(tilemap_get(map_id, xcell, ycell - 1)),
		tile_get_index(tilemap_get(map_id, xcell, ycell + 1)),
		tile_get_index(tilemap_get(map_id, xcell, ycell + 2)),
	]
	
	var data = [ 
		is_wall(d[0]) || is_sidewall(d[0]),
		is_wall(d[1]) || is_sidewall(d[1]),
		is_wall(d[2]) || is_sidewall(d[2]),
		is_wall(d[3]) || is_sidewall(d[3]),
	];
	
	//壁の場合
	if(is_wall(tile_index)){
		
		if(!data[0] && data[1] && data[2] && data[3]){
			tilemap_set(map_id, ground, xcell, ycell);
			tilemap_set(map_id, ground, xcell, ycell - 1);
			
			tilemap_set(map_id2, ground, xcell, ycell);
			tilemap_set(map_id2, ground, xcell, ycell - 1);
			tilemap_set(map_id3, ground, xcell, ycell);
			tilemap_set(map_id3, ground, xcell, ycell - 1);
			
		}else if(data[0] && data[1] && data[2] && data[3]){
			tilemap_set(map_id, ground, xcell, ycell);
			tilemap_set_sidewall(map_id, xcell, ycell - 1);
			
			tilemap_set(map_id2, ground, xcell, ycell);
			tilemap_set(map_id2, ground, xcell, ycell - 1);
			tilemap_set(map_id3, ground, xcell, ycell);
			
			//tilemap_set(map_id3, ground, xcell, ycell - 1);
			
		}else if(!data[0] && !data[1] && data[2] && data[3]){
			tilemap_set(map_id, ground, xcell, ycell);
			
			tilemap_set(map_id2, ground, xcell, ycell);
			tilemap_set(map_id3, ground, xcell, ycell);
		}else if(data[0] && data[1] && data[2] && !data[3]){
			tilemap_set_sidewall(map_id, xcell, ycell);
			tilemap_set(map_id, ground, xcell, ycell + 1);
			
			tilemap_set(map_id2, ground, xcell, ycell);
			tilemap_set(map_id2, ground, xcell, ycell + 1);
			tilemap_set(map_id3, ground, xcell, ycell + 1);
			
		}else if(data[0] && data[1] && !data[2] && !data[3]){
			tilemap_set_sidewall(map_id, xcell, ycell);
			tilemap_set_sidewall(map_id, xcell, ycell + 1);
			//show_debug_message("test");
			//実行されない
			tilemap_set(map_id2, ground, xcell, ycell);
			tilemap_set(map_id2, ground, xcell, ycell + 1);
			
		}else if(!data[0] && data[1] && data[2] && !data[3]){
			tilemap_set_sidewall(map_id, xcell, ycell);
			tilemap_set(map_id, ground, xcell, ycell + 1);
			
			tilemap_set(map_id2, ground, xcell, ycell);
			tilemap_set(map_id2, ground, xcell, ycell + 1);
			tilemap_set(map_id3, ground, xcell, ycell + 1);
		}else if(!data[0] && !data[1] && data[2] && !data[3]){
			tilemap_set(map_id, ground, xcell, ycell);
			tilemap_set(map_id, ground, xcell, ycell + 1);
			
			tilemap_set(map_id2, ground, xcell, ycell);
			tilemap_set(map_id2, ground, xcell, ycell + 1);
			tilemap_set(map_id3, ground, xcell, ycell);
			tilemap_set(map_id3, ground, xcell, ycell + 1);
			
			
		}else if(!data[0] && data[1] && !data[2] && !data[3]){
			tilemap_set(map_id, ground, xcell, ycell);
			tilemap_set(map_id, ground, xcell, ycell - 1);
			
			tilemap_set(map_id2, ground, xcell, ycell);
			tilemap_set(map_id2, ground, xcell, ycell - 1);
			tilemap_set(map_id3, ground, xcell, ycell);
			tilemap_set(map_id3, ground, xcell, ycell - 1);
			
		}else if(data[0] && !data[1] && data[2] && data[3]){
			tilemap_set(map_id, ground, xcell, ycell);
			
			tilemap_set(map_id2, ground, xcell, ycell);
			tilemap_set(map_id3, ground, xcell, ycell);
		}else if(data[0] && !data[1] && data[2] && !data[3]){
			tilemap_set(map_id, ground, xcell, ycell);
			tilemap_set(map_id, ground, xcell, ycell + 1);
			
			tilemap_set(map_id2, ground, xcell, ycell);
			tilemap_set(map_id2, ground, xcell, ycell + 1);
			tilemap_set(map_id3, ground, xcell, ycell);
			tilemap_set(map_id3, ground, xcell, ycell + 1);
		}
	}
	
	//情報の更新
	for(var i = -2; i <= 2; i++){
		for(var j = -2; j <= 2; j++){
			var update_tile = tilemap_get(map_id, xcell + j, ycell + i);
			var index = tile_get_index(update_tile);
			if(is_wall(index)){
				switch(get_wall_type(index)){
					case 0:
						tilemap_set(map_id, get_update_dangeontile(map_id, xcell + j, ycell + i), xcell + j, ycell + i);
					break;
					
					case 1:
						tilemap_set(map_id, get_update_dangeontile2(map_id, xcell + j, ycell + i), xcell + j, ycell + i);
					break;
					
					case 2:
						tilemap_set(map_id, get_update_dangeontile3(map_id, xcell + j, ycell + i), xcell + j, ycell + i);
					break;		
					
					case 3:
						tilemap_set(map_id, get_update_dangeontile4(map_id, xcell + j, ycell + i), xcell + j, ycell + i);
					break;
				}
			}
		}
	}
}
