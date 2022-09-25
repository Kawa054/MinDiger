//ダンジョン内の壁ブロックであるかを判定
function is_wall(tile_index){
	var tile_walls = [71, 24, 25, 26, 27, 28, 22, 35, 36, 37, 38, 39, 46, 47, 48, 49, 50];
	for(var i = 0; i < array_length(tile_walls); i++){
		if(tile_index == tile_walls[i]){
			return true;
		}
	}
	return false;
}