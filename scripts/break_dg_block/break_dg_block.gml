function break_dg_block(xcell, ycell){
	var lay_id = layer_get_id("layer_ground");
	var map_id = layer_tilemap_get_id(lay_id);
	var ground = map_id;
		
	var walls = [ 
		is_wall(tile_get_index(tilemap_get(map_id, xcell, ycell - 1))),
		is_wall(tile_get_index(tilemap_get(map_id, xcell + 1, ycell))),
		is_wall(tile_get_index(tilemap_get(map_id, xcell, ycell + 1))),
		is_wall(tile_get_index(tilemap_get(map_id, xcell - 1, ycell))),
		
		is_wall(tile_get_index(tilemap_get(map_id, xcell, ycell - 2))),
	];
	show_debug_message(walls);
	lay_id = layer_get_id("TileData");
	map_id = layer_tilemap_get_id(lay_id);
	
	var g = tilemap_get(map_id, 3, 0); //地面データ
	tilemap_set(ground, g, xcell, ycell);
	
	if(walls[0]){
		if(walls[4]) tilemap_set(ground, tilemap_get(map_id, irandom_range(0, 2), 1), xcell, ycell - 2);
		tilemap_set(ground, tilemap_get(map_id, 1, 0), xcell, ycell - 1);
	}
	
	if(walls[1]) tilemap_set(ground, tilemap_get(map_id, 0, 3), xcell + 1, ycell);
	if(walls[2]) tilemap_set(ground, tilemap_get(map_id, 0, 4), xcell, ycell + 1);
	if(walls[3]) tilemap_set(ground, tilemap_get(map_id, 0, 2), xcell - 1, ycell);
}