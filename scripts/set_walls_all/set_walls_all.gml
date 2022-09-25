function set_walls_all(){
	var lay_id = layer_get_id("TileData");
	var map_id = layer_tilemap_get_id(lay_id);

	tiledata = [tilemap_get(map_id, 0, 0),
				tilemap_get(map_id, 0, 0),
				tilemap_get(map_id, 0, 0),
				tilemap_get(map_id, 0, 0),
				tilemap_get(map_id, 0, 0),
				];
	
	lay_id = layer_get_id("layer_ground");
	map_id = layer_tilemap_get_id(lay_id);
	for(var i = 0; i <= DANGEON_SIZE_Y / 128; i++){
		for(var j = 0; j <= DANGEON_SIZE_X / 128; j++){
			tilemap_set(map_id, tiledata[0], i, j);
		}
	}
}