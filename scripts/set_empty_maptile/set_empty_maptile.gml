function set_empty_maptile(map_id, xcell, ycell){
	var data = tilemap_get(map_id, xcell, ycell);
	data = tile_set_empty(data);
	tilemap_set(map_id, data, xcell, ycell);
}