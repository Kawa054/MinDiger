// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_stair(xcell, ycell){
	var lay_id = layer_get_id("layer_ground");
	var map_id = layer_tilemap_get_id(lay_id);
	var tile_data  = tilemap_get(map_id, xcell, ycell);
	var tile_index = tile_get_index(tile_data);
	
	return (tile_index == 39);
}