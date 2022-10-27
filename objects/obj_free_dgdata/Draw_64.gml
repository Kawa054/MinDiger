//外枠の描画
draw_sprite_ext(spr_dgselect_bg_fill, 0, x+10, y+10, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_dgselect_bg, 0, x, y, 1, 1, 0, c_white, 1);

//ダンジョンタイトルの描画
draw_set_font(font_esc_button);
color = c_black;
draw_set_color(color);
draw_set_halign(fa_center);
draw_text(window_get_width() / 2 , y + 200, title);


//階層数の描画
draw_set_font(font_main);
draw_set_halign(fa_left);
color = make_color_rgb(76, 66, 53);
draw_set_color(color);
draw_text(x + 320, y + 306, "階層数：" + string(stairs) + "F");

//難易度の描画
var diff_text = "";
diff_text = diff_text + "難易度： ";
for(var i = 1; i <= difficult; i++){
	diff_text = diff_text + "★";
}
draw_text(x + 320 + 200, y + 306, diff_text);


//クリア済み等の情報の描画
draw_set_halign(fa_right);
var clear_text = "";
if(hasCleared){
	clear_text = "（クリア済み）　";
}else{
	clear_text = "（未クリア）　";
}
draw_text( x + MODE_FREE_DGDATA_WIDTH - 300, y + 306, clear_text);
draw_line_width(x + 300, y + 300, x + MODE_FREE_DGDATA_WIDTH - 300, y + 300, 2);

//説明部の描画
draw_line_width(x + 300, y + 340, x + MODE_FREE_DGDATA_WIDTH - 300, y + 340, 2);
color = make_color_rgb(76, 66, 53);
draw_set_color(color);
draw_set_halign(fa_left);
draw_text(x + 320, y + 360, texts[0]);
draw_text(x + 320, y + 400, texts[1]);
draw_text(x + 320, y + 440, texts[2]);
draw_text(x + 320, y + 480, texts[3]);
draw_line_width(x + 300, y + 540, x + MODE_FREE_DGDATA_WIDTH - 300, y + 540, 2);

//敵画像の描画
for(var i = 0; i <= 1; i++){
	for(var j = 0; j < 6; j++){
		if(j + 6*i < array_length(enemy_img)){
			draw_sprite_stretched(enemy_img[j + 6*i], 0, x + 300 + 140*j, y + 550 + 140*i, 128, 128);
		}else{
			break;
		}
	}
}
