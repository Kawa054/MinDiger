width = POPUP_WIDTH;
height = POPUP_HEIGHT;
info_type = POPUP_INFOTYPE_CARE;
response_type = POPUP_RESPONSETYPE_YN;

popup_id = 0;

name_limit = 15;
message = "";

sentence = [];
colors = [];

hover_yes = false;
hover_no = false;

info_icon_width = sprite_get_width(get_popup_info_sprite(info_type));
info_icon_height = sprite_get_height(get_popup_info_sprite(info_type));

cursor = "|";
delay = 20;
alarm[2] = delay;

global.button_hovering_active = false;