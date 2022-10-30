function set_dangeon_tileset(){
	var lay_ids = ["layer_ground", "layer_ground_pattern", "layer_walls", "layer_walls_pattern"];
	
	switch(global.dangeon_type){
		case DANGEON_TYPE_PLAIN:
			for(var i = 0; i < array_length(lay_ids); i++){
				var lay_id = layer_get_id(lay_ids[i]);
				var tile_id = layer_tilemap_get_id (lay_id);
				tilemap_tileset(tile_id, ts_plain_dangeon);
			}
		break;
		
		//素材未完成
		case DANGEON_TYPE_DESERT:
			for(var i = 0; i < array_length(lay_ids); i++){
				var lay_id = layer_get_id(lay_ids[i]);
				var tile_id = layer_tilemap_get_id (lay_id);
				tilemap_tileset(tile_id, ts_desert_dangeon);
			}
		break;
		
		case DANGEON_TYPE_ICE:
			for(var i = 0; i < array_length(lay_ids); i++){
				var lay_id = layer_get_id(lay_ids[i]);
				var tile_id = layer_tilemap_get_id (lay_id);
				tilemap_tileset(tile_id, ts_ice_dangeon);
			}
		break;
		
		case DANGEON_TYPE_VOLCANO:
			for(var i = 0; i < array_length(lay_ids); i++){
				var lay_id = layer_get_id(lay_ids[i]);
				var tile_id = layer_tilemap_get_id (lay_id);
				tilemap_tileset(tile_id, ts_volcano_dangeon);
			}
		break;
		
	}
}