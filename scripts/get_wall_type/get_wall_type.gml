function get_wall_type(tile_index){
	if(tile_index > 0   && tile_index <= 17){ return 0;}
	if(tile_index >= 44 && tile_index <= 61){ return 1;}
	if(tile_index >= 66 && tile_index <= 83){ return 2;}
	if(tile_index >= 88 && tile_index <= 105){ return 3;}
	return -1;
}