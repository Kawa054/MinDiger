if(!textbox_setup){
	textbox_setup = true;
	draw_set_font(font_main);
	draw_set_color(make_color_rgb(DIALOG_TEXT_COLOR_R, DIALOG_TEXT_COLOR_G, DIALOG_TEXT_COLOR_B));
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	page_num = array_length(text);
	for(var i = 0; i < page_num; i++){
		text_length[i] = string_length(text[i]);
		text_x_offset[i] = 44;
	}	
}

text_length[0] = string_length(text[0]);

if(draw_char < text_length[page]){
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

accept_key = keyboard_check_pressed(vk_space);
if(accept_key){
	if(draw_char == text_length[page]){
		//次のページへ
		if(page < page_num - 1){
			page++;
			draw_char = 0;
		}else{
			instance_destroy();
		}
	}else{
		draw_char = text_length[page];
	}
}

textbox_img += textbox_img_speed;

//テキストボックス全体の描画
var textbox_spr_width = sprite_get_width(textbox_spr);
var textbox_spr_height = sprite_get_height(textbox_spr);
draw_sprite_ext(textbox_spr, textbox_img, textbox_x + text_x_offset[page], textbox_y, textbox_width/textbox_spr_width, textbox_height/textbox_spr_height, 0, c_white, 1);

//キャラクターの描画
draw_sprite(textbox_charaimg, 0, textbox_charaimg_offset_x + textbox_x, textbox_charaimg_offset_y + textbox_y);
//ボタンの描画
draw_sprite(textbox_buttonimg, 0, textbox_x + textbox_width - 80, textbox_charaimg_offset_y + textbox_y + textbox_charaimg_height - 40);

//会話文の描画
var _draw_text = string_copy(text[page], 1, draw_char);
draw_set_color(make_color_rgb(DIALOG_TEXT_COLOR_R, DIALOG_TEXT_COLOR_G, DIALOG_TEXT_COLOR_B));
draw_text_ext(textbox_charaimg_offset_x + textbox_charaimg_width + textbox_x + text_x_offset[page] + textbox_offset, textbox_y + textbox_offset + textbox_charaimg_offset_y , _draw_text, textbox_line_separation, textbox_line_width);

//名前の描画
var _draw_text = string_copy(text[page], 1, draw_char);
draw_set_color(make_color_rgb(DIALOG_CHARA_NAME_COLOR_R, DIALOG_CHARA_NAME_COLOR_G, DIALOG_CHARA_NAME_COLOR_B));
draw_sprite(textbox_name_underscore, 0, textbox_charaimg_offset_x + textbox_charaimg_width + textbox_x, textbox_charaimg_height + textbox_y + textbox_offset);
draw_text_ext(textbox_charaimg_offset_x + textbox_charaimg_width + textbox_x + text_x_offset[page] + textbox_offset - 50, textbox_charaimg_height + textbox_y - 30 + textbox_offset, textbox_chara_name, textbox_line_separation, textbox_line_width);
