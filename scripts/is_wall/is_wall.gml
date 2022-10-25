//ダンジョン内の壁ブロックであるかを判定
function is_wall(tile_index){
	//var tile_walls = [71, 24, 25, 26, 27, 28, 22, 35, 36, 37, 38, 39, 46, 47, 48, 49, 50];
	//for(var i = 0; i < array_length(tile_walls); i++){
		//if(tile_index == tile_walls[i]){
			//return true;
		//}
	//}
	switch(global.dangeon_type){
		case DANGEON_TYPE_PLAIN:
			return (tile_index > 0 && tile_index <= 16);
		break;
		
		case DANGEON_TYPE_DESERT:
			return (tile_index > 0 && tile_index <= 16);
		break;
		
		case DANGEON_TYPE_ICE:
			return (tile_index > 0 && tile_index <= 16);
		break;
		
		case DANGEON_TYPE_VOLCANO:
			return (tile_index > 0 && tile_index <= 16);
		break;
	}
}