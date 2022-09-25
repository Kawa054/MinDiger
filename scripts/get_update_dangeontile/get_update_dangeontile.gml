
//周囲のブロック状況からオートタイリングしたタイルを得る
function get_update_dangeontile(tilemap_id, xcell, ycell){
	lay_id = layer_get_id("TileData");
	map_id = layer_tilemap_get_id(lay_id);
	
	var index = [
		tile_get_index(tilemap_get(tilemap_id, xcell, ycell - 1)),
		tile_get_index(tilemap_get(tilemap_id, xcell + 1, ycell)),
		tile_get_index(tilemap_get(tilemap_id, xcell, ycell + 1)),
		tile_get_index(tilemap_get(tilemap_id, xcell - 1, ycell)),
	]
	
	var wall = [ 
		is_wall(index[0]), is_wall(index[1]), is_wall(index[2]), is_wall(index[3]),
	];
	
	//周りの状況からタイルを返す
	if( wall[0] &&  wall[1] &&  wall[2] &&  wall[3]){ return tilemap_get(map_id, 0, 0); }
	if( wall[0] &&  wall[1] &&  wall[2] && !wall[3]){ return tilemap_get(map_id, 6, 3); }
	if( wall[0] &&  wall[1] && !wall[2] &&  wall[3]){ return tilemap_get(map_id, 9, 3); }
	if( wall[0] &&  wall[1] && !wall[2] && !wall[3]){ return tilemap_get(map_id, 9, 2); }
	if( wall[0] && !wall[1] &&  wall[2] &&  wall[3]){ return tilemap_get(map_id, 8, 3); }
	if( wall[0] && !wall[1] &&  wall[2] && !wall[3]){ return tilemap_get(map_id, 5, 2); }
	if( wall[0] && !wall[1] && !wall[2] &&  wall[3]){ return tilemap_get(map_id, 8, 2); }
	if( wall[0] && !wall[1] && !wall[2] && !wall[3]){ return tilemap_get(map_id, 9, 1); }
	if(!wall[0] &&  wall[1] &&  wall[2] &&  wall[3]){ return tilemap_get(map_id, 7, 3); }
	if(!wall[0] &&  wall[1] &&  wall[2] && !wall[3]){ return tilemap_get(map_id, 7, 2); }
	if(!wall[0] &&  wall[1] && !wall[2] &&  wall[3]){ return tilemap_get(map_id, 6, 2); }
	if(!wall[0] &&  wall[1] && !wall[2] && !wall[3]){ return tilemap_get(map_id, 8, 1); }
	if(!wall[0] && !wall[1] &&  wall[2] &&  wall[3]){ return tilemap_get(map_id, 5, 3); }
	if(!wall[0] && !wall[1] &&  wall[2] && !wall[3]){ return tilemap_get(map_id, 7, 1); }
	if(!wall[0] && !wall[1] && !wall[2] &&  wall[3]){ return tilemap_get(map_id, 6, 1); }
	if(!wall[0] && !wall[1] && !wall[2] && !wall[3]){ return tilemap_get(map_id, 5, 1); }
}