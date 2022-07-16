var lay_id = layer_get_id("layer_ground");

//地面の色を変更
shader_set(shd_ground_color);
var uniform_gc_r = shader_get_uniform(shd_ground_color, "ground_color_r");
var uniform_gc_g = shader_get_uniform(shd_ground_color, "ground_color_g");
var uniform_gc_b = shader_get_uniform(shd_ground_color, "ground_color_b");
shader_set_uniform_f(uniform_gc_r, GROUND_GRASS_COLOR_R/255.0);
shader_set_uniform_f(uniform_gc_g, GROUND_GRASS_COLOR_G/255.0);
shader_set_uniform_f(uniform_gc_b, GROUND_GRASS_COLOR_B/255.0);
layer_shader(lay_id, shd_ground_color);
shader_reset();

var lay_id = layer_get_id("layer_ground_noise");
layer_shader(lay_id, shd_ground_noise);
shader_set(shd_ground_noise);
var uniform_gc_r = shader_get_uniform(shd_ground_noise, "noise_color_r");
var uniform_gc_g = shader_get_uniform(shd_ground_noise, "noise_color_g");
var uniform_gc_b = shader_get_uniform(shd_ground_noise, "noise_color_b");
shader_set_uniform_f(uniform_gc_r, GRASS_UPPER1_COLOR_R/255.0);
shader_set_uniform_f(uniform_gc_g, GRASS_UPPER1_COLOR_G/255.0);
shader_set_uniform_f(uniform_gc_b, GRASS_UPPER1_COLOR_B/255.0);
layer_shader(lay_id, shd_ground_noise);
shader_reset();
