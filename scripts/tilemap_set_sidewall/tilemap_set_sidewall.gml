function tilemap_set_sidewall(map_id, xcell, ycell){
	var tile_data  = tilemap_get(map_id, xcell, ycell);
	var tile_index = tile_get_index(tile_data);
	if(tile_index > 0   && tile_index <= 17){ tilemap_set(map_id, 17, xcell, ycell); }
	if(tile_index >= 44 && tile_index <= 61){ tilemap_set(map_id, 61, xcell, ycell); }
	if(tile_index >= 66 && tile_index <= 83){ tilemap_set(map_id, 83, xcell, ycell); }
	if(tile_index >= 88 && tile_index <= 105){ tilemap_set(map_id, 105, xcell, ycell); }
}