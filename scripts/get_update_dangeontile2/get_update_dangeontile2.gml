function get_update_dangeontile2(tilemap_id, xcell, ycell){
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
	if( wall[0] &&  wall[1] &&  wall[2] &&  wall[3]){ return 16 + 44; }
	if( wall[0] &&  wall[1] &&  wall[2] && !wall[3]){ return 11 + 44; }
	if( wall[0] &&  wall[1] && !wall[2] &&  wall[3]){ return 14 + 44; }
	if( wall[0] &&  wall[1] && !wall[2] && !wall[3]){ return 8 + 44; }
	if( wall[0] && !wall[1] &&  wall[2] &&  wall[3]){ return 13 + 44; }
	if( wall[0] && !wall[1] &&  wall[2] && !wall[3]){ return 9 + 44; }
	if( wall[0] && !wall[1] && !wall[2] &&  wall[3]){ return 7 + 44; }
	if( wall[0] && !wall[1] && !wall[2] && !wall[3]){ return 1 + 44; }
	if(!wall[0] &&  wall[1] &&  wall[2] &&  wall[3]){ return 12 + 44; }
	if(!wall[0] &&  wall[1] &&  wall[2] && !wall[3]){ return 5 + 44; }
	if(!wall[0] &&  wall[1] && !wall[2] &&  wall[3]){ return 10 + 44; }
	if(!wall[0] &&  wall[1] && !wall[2] && !wall[3]){ return 2 + 44; }
	if(!wall[0] && !wall[1] &&  wall[2] &&  wall[3]){ return 6 + 44; }
	if(!wall[0] && !wall[1] &&  wall[2] && !wall[3]){ return 3 + 44; }
	if(!wall[0] && !wall[1] && !wall[2] &&  wall[3]){ return 4 + 44; }
	if(!wall[0] && !wall[1] && !wall[2] && !wall[3]){ return 15 + 44; }
}