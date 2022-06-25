
textbox_width = 800;  //テキストボックスの横幅
textbox_height = 300; //テキストボックスの縦幅
textbox_offset = 8;  //テキストボックスの周りのマージン

textbox_line_separation = 48; //テキストの行間の間隔
textbox_line_width = textbox_width - 2*textbox_offset; //行の横幅

textbox_setup = false;

textbox_img = 0;
textbox_img_speed = 6/60;
textbox_spr = spr_dialog_bg;

page = 0;
page_num = 0;
text[0] = "Error Message1";
text[1] = "Error Message2";
text[2] = "Error Message3";
text[3] = "Error Message4";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_speed = 1;


