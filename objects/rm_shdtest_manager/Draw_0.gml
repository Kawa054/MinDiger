
//layer_groundの描画
surface_set_target(surface);
//draw_tilemap(layer_background_tm, 0, 0);
draw_tilemap(layer_ground_tm, 0, 0);
surface_reset_target();

//layer_groundに対するシェーダの適用
surface_set_target(surface);
shader_set(shd_ground_noise);
shader_set_uniform_f(unf_gc_r, GROUND_GRASS_COLOR_R);
shader_set_uniform_f(unf_gc_g, GROUND_GRASS_COLOR_G);
shader_set_uniform_f(unf_gc_b, GROUND_GRASS_COLOR_B);
shader_set_uniform_f(unf_nc_r, GRASS_UPPER1_COLOR_R/255.0);
shader_set_uniform_f(unf_nc_g, GRASS_UPPER1_COLOR_G/255.0);
shader_set_uniform_f(unf_nc_b, GRASS_UPPER1_COLOR_B/255.0);
draw_surface(surface, 0, 0);
shader_reset();
surface_reset_target();

//layer_objectの描画
surface_set_target(surface);
draw_tilemap(layer_ground_tm, 0, 0);
surface_reset_target();

draw_surface_ext(surface, 0, 0, 2, 2, 0, c_white, 1);