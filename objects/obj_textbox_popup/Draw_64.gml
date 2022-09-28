//背景を暗くする
draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
draw_set_alpha(1);

//枠の描画
draw_sprite_stretched(spr_popup, 0, x, y, width, height);


//各文章の表示
draw_set_font(font_popup);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
var num = array_length(sentence);

for(var i = 0; i < num; i++){
	draw_set_color(colors[i]);
	draw_text(x + width/2, 
			  y + POPUP_TEXT_MARGIN_Y + i*(POPUP_TEXT_MARGIN_Y + 24),
			  sentence[i]
	);
}

//入力フォーム
draw_set_color(c_black);
draw_text(x + width/2, y + POPUP_TEXT_MARGIN_Y + (num+1)*(POPUP_TEXT_MARGIN_Y + 24), message+cursor);


//はい、いいえの描画
var color1 = make_colour_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B);
var color2 = c_white;

switch(response_type){
	case POPUP_RESPONSETYPE_YN:
		if(hover_yes){
			draw_set_color(color1);
			draw_rectangle(x + width/2 - POPUP_SELECT_SEP_X - POPUP_YES_WIDTH,
						   y + height - POPUP_SELECT_MARGIN_UNDER - POPUP_YES_HEIGHT,
						   x + width/2 - POPUP_SELECT_SEP_X,
						   y + height - POPUP_SELECT_MARGIN_UNDER,
						   false
			);
						   
			draw_set_color(color2);
			draw_text(x + width/2 - POPUP_SELECT_SEP_X - POPUP_YES_WIDTH/2,
					  y + height - POPUP_SELECT_MARGIN_UNDER - POPUP_YES_HEIGHT/2 - POPUP_SELECT_OFFSET_Y,
					  "決定！"
			);
		}else{
			draw_set_color(color1);
			draw_text(x + width/2 - POPUP_SELECT_SEP_X - POPUP_YES_WIDTH/2,
					  y + height - POPUP_SELECT_MARGIN_UNDER - POPUP_YES_HEIGHT/2 - POPUP_SELECT_OFFSET_Y,
					  "決定！"
			);
		}
		
		if(hover_no){
			draw_set_color(color1);
			draw_rectangle(x + width/2 + POPUP_SELECT_SEP_X,
						   y + height - POPUP_SELECT_MARGIN_UNDER - POPUP_NO_HEIGHT,
						   x + width/2 + POPUP_SELECT_SEP_X + POPUP_NO_WIDTH,
						   y + height - POPUP_SELECT_MARGIN_UNDER,
						   false
			);
						   
			draw_set_color(color2);
			draw_text(x + width/2 + POPUP_SELECT_SEP_X + POPUP_NO_WIDTH/2,
					  y + height - POPUP_SELECT_MARGIN_UNDER - POPUP_NO_HEIGHT/2 - POPUP_SELECT_OFFSET_Y,
					  "やめる"
			);
		}else{
			draw_set_color(color1);
			draw_text(x + width/2 + POPUP_SELECT_SEP_X + POPUP_NO_WIDTH/2,
					  y + height - POPUP_SELECT_MARGIN_UNDER - POPUP_NO_HEIGHT/2 - POPUP_SELECT_OFFSET_Y,
					  "やめる"
			);
		}
		
	break;
}

draw_set_font(font_main);
