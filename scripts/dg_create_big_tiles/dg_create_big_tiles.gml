
function dg_create_big_tiles(xcell, ycell, tile_index){
	randomize();
	var lower1 = -irandom_range(1, 5);
	randomize();
	var upper1 =  irandom_range(1, 5);
	
	var lay_id = layer_get_id("layer_walls");
	var map_id = layer_tilemap_get_id(lay_id);
	
	for(var i = lower1; i <= upper1; i++){
		randomize();
		var lower2 = -irandom_range(1, 5);
		randomize();
		var upper2 =  irandom_range(1, 5);
		for(var j = lower2; j <= upper2; j++){
			if is_in_dangeon(xcell + j, ycell + i)
				tilemap_set(map_id, tile_index, xcell + j, ycell + i);
		}
	}
}