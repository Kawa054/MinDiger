function is_in_dangeon(xcell, ycell){
	return (xcell >= dangeon_start_x) && (xcell <= dangeon_end_x) && (ycell >= dangeon_start_y) && (ycell <= dangeon_end_y);
}