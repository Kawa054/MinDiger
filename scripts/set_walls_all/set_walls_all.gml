function set_walls_all(){
	switch(global.dangeon_type){
		case DANGEON_TYPE_PLAIN:
			wall = 16;
			lay_id = layer_get_id("layer_walls");
			map_id = layer_tilemap_get_id(lay_id);
			for(var i = 0; i <= DANGEON_SIZE_Y / 128; i++){
				for(var j = 0; j <= DANGEON_SIZE_X / 128; j++){
					tilemap_set(map_id, wall, i, j);
				}
			}
		break;
		
		case DANGEON_TYPE_DESERT:
			wall = 16;
			lay_id = layer_get_id("layer_walls");
			map_id = layer_tilemap_get_id(lay_id);
			for(var i = 0; i <= DANGEON_SIZE_Y / 128; i++){
				for(var j = 0; j <= DANGEON_SIZE_X / 128; j++){
					tilemap_set(map_id, wall, i, j);
				}
			}
		break;
		
		case DANGEON_TYPE_ICE:
			wall = 16;
			lay_id = layer_get_id("layer_walls");
			map_id = layer_tilemap_get_id(lay_id);
			for(var i = 0; i <= DANGEON_SIZE_Y / 128; i++){
				for(var j = 0; j <= DANGEON_SIZE_X / 128; j++){
					tilemap_set(map_id, wall, i, j);
				}
			}
		break;
		
		case DANGEON_TYPE_VOLCANO:
			wall = 16;
			lay_id = layer_get_id("layer_walls");
			map_id = layer_tilemap_get_id(lay_id);
			for(var i = 0; i <= DANGEON_SIZE_Y / 128; i++){
				for(var j = 0; j <= DANGEON_SIZE_X / 128; j++){
					tilemap_set(map_id, wall, i, j);
				}
			}
		break;
		
	}
}