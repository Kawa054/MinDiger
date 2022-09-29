function create_dangeon_stair(xcell, ycell){
	var lay_id = layer_get_id("layer_ground");
	var map_id = layer_tilemap_get_id(lay_id);

	var map_id2 = layer_tilemap_get_id(layer_get_id("TileData"));
	var stair = tilemap_get(map_id2, 2, 0);

	tilemap_set(map_id, stair, xcell, ycell);
}