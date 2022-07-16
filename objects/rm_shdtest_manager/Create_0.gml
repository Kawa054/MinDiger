surface = -1;
if !surface_exists(surface){
    surface = surface_create(room_width,room_height);
}

//シェーダのuniformの定義
//地面の色情報
unf_gc_r = shader_get_uniform(shd_ground_noise, "GROUND_COLOR_R");
unf_gc_g = shader_get_uniform(shd_ground_noise, "GROUND_COLOR_G");
unf_gc_b = shader_get_uniform(shd_ground_noise, "GROUND_COLOR_B");

//ノイズの色情報
unf_nc_r = shader_get_uniform(shd_ground_noise, "NOISE_COLOR_R");
unf_nc_g = shader_get_uniform(shd_ground_noise, "NOISE_COLOR_G");
unf_nc_b = shader_get_uniform(shd_ground_noise, "NOISE_COLOR_B");

//レイヤー情報の取得
layer_background = layer_get_id("Background");
layer_ground = layer_get_id("layer_ground");
layer_object = layer_get_id("layer_object");

//レイヤーのタイルマップを取得
layer_background_tm = layer_tilemap_get_id(layer_background);
layer_ground_tm = layer_tilemap_get_id(layer_ground);
layer_object_tm = layer_tilemap_get_id(layer_object);

application_surface_draw_enable(false);