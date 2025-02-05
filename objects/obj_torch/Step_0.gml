var lay_id = layer_get_id("layer_walls");
var map_id = layer_tilemap_get_id(lay_id);
var tile_data  = tilemap_get(map_id, floor((x + 64)/128), floor((y+64)/128));
var tile_index = tile_get_index(tile_data);

if(!is_sidewall(tile_index)){
	instance_create_layer(x, y, "layer_ground_item", obj_torch_under);
	instance_destroy(id);
}