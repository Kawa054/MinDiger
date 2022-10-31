var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

	
//壁周りの影を追加
var lay_id = layer_get_id("layer_walls");
var map_id = layer_tilemap_get_id(lay_id);
var px = tilemap_get_cell_x_at_pixel(map_id, obj_player.x+64, obj_player.y+64);
var py = tilemap_get_cell_y_at_pixel(map_id, obj_player.x+64, obj_player.y+64);
var sx = floor(WALL_SHADOW_UPDATE_X/ 2);
var sy = floor(WALL_SHADOW_UPDATE_Y/ 2);

draw_set_alpha(alpha);
with(obj_player){
	for(var i = -sx; i <= sx; i++){
		for(var j = -sy; j <= sy; j++){
			if(ds_grid_get(dangeon_manager.wall_shadow_grid, sx+i, sy+j) == 1){
				draw_sprite(spr_wall_shadow, 0, px*128+i*128-11, py*128+j*128-6);
			}
		}
	}
}
draw_set_alpha(1);