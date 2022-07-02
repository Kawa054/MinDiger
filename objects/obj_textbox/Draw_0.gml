if(!textbox_setup){
	textbox_setup = true;
	draw_set_font(font_main);
	draw_set_color(c_white);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	page_num = array_length(text);
	for(var i = 0; i < page_num; i++){
		text_length[i] = string_length(text[i]);
		text_x_offset[i] = 44;
	}	
}

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
textbox_spr_width = sprite_get_width(textbox_spr);
textbox_spr_height = sprite_get_height(textbox_spr);
draw_sprite_ext(textbox_spr, textbox_img, textbox_x + text_x_offset[page], textbox_y, textbox_width/textbox_spr_width, textbox_height/textbox_spr_height, 0, c_white, 1);

var _draw_text = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + textbox_offset, textbox_y + textbox_offset, _draw_text, textbox_line_separation, textbox_line_width);
