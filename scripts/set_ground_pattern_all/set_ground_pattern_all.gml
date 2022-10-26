function set_ground_pattern_all(){
	switch(global.dangeon_type){
		case DANGEON_TYPE_PLAIN:
			ground_patterns = [22, 23, 24, 25, 26, 27, 33, 34, 35, 36, 37, 38];
			lay_id = layer_get_id("layer_ground_pattern");
			map_id = layer_tilemap_get_id(lay_id);
			for(var i = 0; i <= DANGEON_SIZE_Y / 128; i++){
				for(var j = 0; j <= DANGEON_SIZE_X / 128; j++){
					//randomize();
					var r1 = irandom_range(1, 20);
					if(r1 == 1){
						//randomize();
						var r2 = irandom_range(0, array_length(ground_patterns)-1);
						tilemap_set(map_id, ground_patterns[r2], i, j);
					}
				}
			}
		break;
		
		case DANGEON_TYPE_DESERT:
			ground_patterns = [22, 23, 24, 25, 26, 27, 33, 34, 35, 36, 37, 38];
			lay_id = layer_get_id("layer_ground_pattern");
			map_id = layer_tilemap_get_id(lay_id);
			for(var i = 0; i <= DANGEON_SIZE_Y / 128; i++){
				for(var j = 0; j <= DANGEON_SIZE_X / 128; j++){
					//randomize();
					var r1 = irandom_range(1, 20);
					if(r1 == 1){
						//randomize();
						var r2 = irandom_range(0, array_length(ground_patterns)-1);
						tilemap_set(map_id, ground_patterns[r2], i, j);
					}
				}
			}
		break;
		
		case DANGEON_TYPE_ICE:
			ground_patterns = [22, 23, 24, 25, 26, 27, 33, 34, 35, 36, 37, 38];
			lay_id = layer_get_id("layer_ground_pattern");
			map_id = layer_tilemap_get_id(lay_id);
			for(var i = 0; i <= DANGEON_SIZE_Y / 128; i++){
				for(var j = 0; j <= DANGEON_SIZE_X / 128; j++){
					//randomize();
					var r1 = irandom_range(1, 20);
					if(r1 == 1){
						//randomize();
						var r2 = irandom_range(0, array_length(ground_patterns)-1);
						tilemap_set(map_id, ground_patterns[r2], i, j);
					}
				}
			}
		break;
		
		case DANGEON_TYPE_VOLCANO:
			ground_patterns = [22, 23, 24, 25, 26, 27, 33, 34, 35, 36, 37, 38, 40, 41, 42];
			lay_id = layer_get_id("layer_ground_pattern");
			map_id = layer_tilemap_get_id(lay_id);
			for(var i = 0; i <= DANGEON_SIZE_Y / 128; i++){
				for(var j = 0; j <= DANGEON_SIZE_X / 128; j++){
					//randomize();
					var r1 = irandom_range(1, 16);
					if(r1 == 1){
						//randomize();
						var r2 = irandom_range(0, array_length(ground_patterns)-1);
						tilemap_set(map_id, ground_patterns[r2], i, j);
					}
				}
			}
		break;
		
	}
}