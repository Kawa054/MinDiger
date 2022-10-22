
//周囲のブロック状況からオートタイリングしたタイルを得る
function get_update_dangeontile(tilemap_id, xcell, ycell){
	
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
	if( wall[0] &&  wall[1] &&  wall[2] &&  wall[3]){ return 16; }
	if( wall[0] &&  wall[1] &&  wall[2] && !wall[3]){ return 11; }
	if( wall[0] &&  wall[1] && !wall[2] &&  wall[3]){ return 14; }
	if( wall[0] &&  wall[1] && !wall[2] && !wall[3]){ return 8; }
	if( wall[0] && !wall[1] &&  wall[2] &&  wall[3]){ return 13; }
	if( wall[0] && !wall[1] &&  wall[2] && !wall[3]){ return 9; }
	if( wall[0] && !wall[1] && !wall[2] &&  wall[3]){ return 7; }
	if( wall[0] && !wall[1] && !wall[2] && !wall[3]){ return 1; }
	if(!wall[0] &&  wall[1] &&  wall[2] &&  wall[3]){ return 12; }
	if(!wall[0] &&  wall[1] &&  wall[2] && !wall[3]){ return 5; }
	if(!wall[0] &&  wall[1] && !wall[2] &&  wall[3]){ return 10; }
	if(!wall[0] &&  wall[1] && !wall[2] && !wall[3]){ return 2; }
	if(!wall[0] && !wall[1] &&  wall[2] &&  wall[3]){ return 6; }
	if(!wall[0] && !wall[1] &&  wall[2] && !wall[3]){ return 3; }
	if(!wall[0] && !wall[1] && !wall[2] &&  wall[3]){ return 4; }
	if(!wall[0] && !wall[1] && !wall[2] && !wall[3]){ return 15; }
}