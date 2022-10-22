function create_dangeon_stair(xcell, ycell){
	var lay_id = layer_get_id("layer_ground");
	var map_id = layer_tilemap_get_id(lay_id);

	var stair = 39;

	tilemap_set(map_id, stair, xcell, ycell);
}