function get_update_dangeontile3(tilemap_id, xcell, ycell){
	
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
	if( wall[0] &&  wall[1] &&  wall[2] &&  wall[3]){ return 16 + 66; }
	if( wall[0] &&  wall[1] &&  wall[2] && !wall[3]){ return 11 + 66; }
	if( wall[0] &&  wall[1] && !wall[2] &&  wall[3]){ return 14 + 66; }
	if( wall[0] &&  wall[1] && !wall[2] && !wall[3]){ return 8 + 66; }
	if( wall[0] && !wall[1] &&  wall[2] &&  wall[3]){ return 13 + 66; }
	if( wall[0] && !wall[1] &&  wall[2] && !wall[3]){ return 9 + 66; }
	if( wall[0] && !wall[1] && !wall[2] &&  wall[3]){ return 7 + 66; }
	if( wall[0] && !wall[1] && !wall[2] && !wall[3]){ return 1 + 66; }
	if(!wall[0] &&  wall[1] &&  wall[2] &&  wall[3]){ return 12 + 66; }
	if(!wall[0] &&  wall[1] &&  wall[2] && !wall[3]){ return 5 + 66; }
	if(!wall[0] &&  wall[1] && !wall[2] &&  wall[3]){ return 10 + 66; }
	if(!wall[0] &&  wall[1] && !wall[2] && !wall[3]){ return 2 + 66; }
	if(!wall[0] && !wall[1] &&  wall[2] &&  wall[3]){ return 6 + 66; }
	if(!wall[0] && !wall[1] &&  wall[2] && !wall[3]){ return 3 + 66; }
	if(!wall[0] && !wall[1] && !wall[2] &&  wall[3]){ return 4 + 66; }
	if(!wall[0] && !wall[1] && !wall[2] && !wall[3]){ return 15 + 66; }
}