function is_sidewall(tile_index){
	switch(global.dangeon_type){
		case DANGEON_TYPE_PLAIN:
			return (tile_index == 17) || (tile_index == 61) || (tile_index == 83) || (tile_index == 105);
		break;
		
		case DANGEON_TYPE_DESERT:
			return (tile_index == 17) || (tile_index == 61) || (tile_index == 83) || (tile_index == 105);
		break;
		
		case DANGEON_TYPE_ICE:
			return (tile_index == 17) || (tile_index == 61) || (tile_index == 83) || (tile_index == 105);
		break;
		
		case DANGEON_TYPE_VOLCANO:
			return (tile_index == 17) || (tile_index == 61) || (tile_index == 83) || (tile_index == 105);
		break;
	}
	return false;
}