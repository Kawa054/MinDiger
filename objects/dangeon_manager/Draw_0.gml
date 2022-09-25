var lay_id = layer_get_id("layer_ground");
var map_id = layer_tilemap_get_id(lay_id);

player_foot_x = floor((obj_player.x + 64) / 128);
player_foot_y = floor((obj_player.y + 64) / 128);

break_dg_block(player_foot_x, player_foot_y);