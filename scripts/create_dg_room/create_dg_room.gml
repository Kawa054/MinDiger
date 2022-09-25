function create_dg_rooms(tilemap){
	var lay_id = layer_get_id("TileData");
	var map_id = layer_tilemap_get_id(lay_id);

	var tiledata = tilemap_get(map_id, 3, 0);
	
	for(var i = 0; i < 3; i++){
		for(var j = 0; j < 3; j++){
			var roomX = i*(DANGEON_SIZE_X / 128) / 3;
			var roomY = j*(DANGEON_SIZE_Y / 128) / 3;
		}
	}
}	