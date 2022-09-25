
textbox_width = 600;  //テキストボックスの横幅
textbox_height = 240; //テキストボックスの縦幅
textbox_offset = 20;  //テキストボックスの周りのマージン


textbox_charaimg_width = 200;
textbox_charaimg_height = 200;
textbox_charaimg_offset_x = 50;
textbox_charaimg_offset_y = 10;
textbox_charaimg = spr_chara_ice1_dialog;
textbox_buttonimg = spr_dialog_action_button;
textbox_name_underscore = spr_dialog_name_underscore;
textbox_chara_name = "";

textbox_setup = false;

textbox_line_separation = 48; //テキストの行間の間隔
textbox_line_width = textbox_width - 2*textbox_offset - textbox_charaimg_width ; //行の横幅

textbox_img = 0;
textbox_img_speed = 6/60;
textbox_spr = spr_dialog_bg;
textbox_x = 0;
textbox_y = 0;

page = 0;
page_num = 0;
text[0] = "Error Message1";
text[1] = "Error Message2";
text[2] = "Error Message3";
text[3] = "Error Message4";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_speed = 1;


