function set_walls_all(){
	dg_create_wall3();
	switch(global.dangeon_type){
		case DANGEON_TYPE_PLAIN:
			wall = 16;
			lay_id = layer_get_id("layer_walls");
			map_id = layer_tilemap_get_id(lay_id);
			for(var i = dangeon_start_x; i <= dangeon_end_x; i++){
				for(var j = dangeon_start_y; j <=  dangeon_end_y; j++){
					tilemap_set(map_id, wall, i, j);
				}
			}
		break;
		
		case DANGEON_TYPE_DESERT:
			wall = 16;
			lay_id = layer_get_id("layer_walls");
			map_id = layer_tilemap_get_id(lay_id);
			for(var i = dangeon_start_x; i <= dangeon_end_x; i++){
				for(var j = dangeon_start_y; j <=  dangeon_end_y; j++){
					tilemap_set(map_id, wall, i, j);
				}
			}
		break;
		
		case DANGEON_TYPE_ICE:
			wall = 16;
			lay_id = layer_get_id("layer_walls");
			map_id = layer_tilemap_get_id(lay_id);
			for(var i = dangeon_start_x; i <= dangeon_end_x; i++){
				for(var j = dangeon_start_y; j <=  dangeon_end_y; j++){
					tilemap_set(map_id, wall, i, j);
				}
			}
		break;
		
		case DANGEON_TYPE_VOLCANO:
			wall = 16;
			lay_id = layer_get_id("layer_walls");
			map_id = layer_tilemap_get_id(lay_id);
			for(var i = dangeon_start_x; i <= dangeon_end_x; i++){
				for(var j = dangeon_start_y; j <=  dangeon_end_y; j++){
					tilemap_set(map_id, wall, i, j);
				}
			}
		break;
	}
	dg_create_wall2();
	dg_create_wall1();
}