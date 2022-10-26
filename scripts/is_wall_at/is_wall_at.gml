function is_wall_at(posx, posy){
	var lay_id = layer_get_id("layer_walls");
	var map_id = layer_tilemap_get_id(lay_id);
	var tile_data  = tilemap_get_at_pixel(map_id, posx, posy);
	var tile_index = tile_get_index(tile_data);
	return is_wall(tile_index) || is_sidewall(tile_index);
}