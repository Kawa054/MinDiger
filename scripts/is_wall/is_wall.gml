//ダンジョン内の壁ブロックであるかを判定
function is_wall(tile_index){
	var tile_walls = [71, 0, 1, 2, 3, 11, 22, 33, 44, 55, 66, 77, 88, 68, 69, 70];
	for(var i = 0; i < array_length(tile_walls); i++){
		if(tile_index == tile_walls[i]){
			return true;
		}
	}
	return false;
}