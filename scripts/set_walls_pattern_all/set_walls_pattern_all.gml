function set_walls_pattern_all(){
	switch(global.dangeon_type){
		case DANGEON_TYPE_PLAIN:
			wall_patterns = [19, 20, 28, 29, 30, 31];
			lay_id = layer_get_id("layer_walls_pattern");
			map_id = layer_tilemap_get_id(lay_id);
			for(var i = 0; i <= DANGEON_SIZE_Y / 128; i++){
				for(var j = 0; j <= DANGEON_SIZE_X / 128; j++){
					//randomize();
					var r1 = irandom_range(1, 8);
					if(r1 == 1){
						//randomize();
						var r2 = irandom_range(0, array_length(wall_patterns)-1);
						tilemap_set(map_id, wall_patterns[r2], i, j);
					}
				}
			}
		break;
		
		case DANGEON_TYPE_DESERT:
		break;
		
		case DANGEON_TYPE_ICE:
		break;
		
		case DANGEON_TYPE_VOLCANO:
		break;
		
	}
}