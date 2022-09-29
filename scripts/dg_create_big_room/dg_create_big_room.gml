function dg_create_big_room(xcell, ycell){
	randomize();
	var lower1 = -irandom_range(1, 5);
	randomize();
	var upper1 =  irandom_range(1, 5);
	
	for(var i = lower1; i <= upper1; i++){
		randomize();
		var lower2 = -irandom_range(1, 5);
		randomize();
		var upper2 =  irandom_range(1, 5);
		for(var j = lower2; j <= upper2; j++){
			if is_in_dangeon(xcell + j, ycell + i)
				break_dg_block(xcell + j, ycell + i);
		}
	}
}