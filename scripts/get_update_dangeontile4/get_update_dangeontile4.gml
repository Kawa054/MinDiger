function get_update_dangeontile4(tilemap_id, xcell, ycell){
	
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
	if( wall[0] &&  wall[1] &&  wall[2] &&  wall[3]){ return 16 + 88; }
	if( wall[0] &&  wall[1] &&  wall[2] && !wall[3]){ return 11 + 88; }
	if( wall[0] &&  wall[1] && !wall[2] &&  wall[3]){ return 14 + 88; }
	if( wall[0] &&  wall[1] && !wall[2] && !wall[3]){ return 8 + 88; }
	if( wall[0] && !wall[1] &&  wall[2] &&  wall[3]){ return 13 + 88; }
	if( wall[0] && !wall[1] &&  wall[2] && !wall[3]){ return 9 + 88; }
	if( wall[0] && !wall[1] && !wall[2] &&  wall[3]){ return 7 + 88; }
	if( wall[0] && !wall[1] && !wall[2] && !wall[3]){ return 1 + 88; }
	if(!wall[0] &&  wall[1] &&  wall[2] &&  wall[3]){ return 12 + 88; }
	if(!wall[0] &&  wall[1] &&  wall[2] && !wall[3]){ return 5 + 88; }
	if(!wall[0] &&  wall[1] && !wall[2] &&  wall[3]){ return 10 + 88; }
	if(!wall[0] &&  wall[1] && !wall[2] && !wall[3]){ return 2 + 88; }
	if(!wall[0] && !wall[1] &&  wall[2] &&  wall[3]){ return 6 + 88; }
	if(!wall[0] && !wall[1] &&  wall[2] && !wall[3]){ return 3 + 88; }
	if(!wall[0] && !wall[1] && !wall[2] &&  wall[3]){ return 4 + 88; }
	if(!wall[0] && !wall[1] && !wall[2] && !wall[3]){ return 15 + 88; }
}