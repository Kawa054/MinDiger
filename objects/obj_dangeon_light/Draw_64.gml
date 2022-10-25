if(surface_exists(surface)){
	var viewX = camera_get_view_x(view_camera[0]);
	var viewY = camera_get_view_y(view_camera[0]);
	var viewH = camera_get_view_height(view_camera[0]);
	var viewW = camera_get_view_width(view_camera[0]);
	
	//ダンジョン全体を暗く設定する
	surface_set_target(surface);
	draw_set_color(c_black);
	draw_set_alpha(global.dangeon_light_alpha);
	draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
	
	gpu_set_blendmode(bm_subtract);
	
	//プレイヤーの光を描画
	with(obj_player){
		draw_sprite_ext(spr_light, 0, x-viewX-130, y-viewY-180, 0.5, 0.5, 0, c_white, 1);
	}
	
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	
	//上から描画
	draw_surface(surface, 0, 0);

}else{
	surface = surface_create(window_get_width(), window_get_height());
	
	surface_set_target(surface);
	draw_set_color(c_black);
	draw_set_alpha(global.dangeon_light_alpha);
	draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
	
	surface_reset_target();
}