#macro POPUP_INFOTYPE_EXIT 0
#macro POPUP_INFOTYPE_CARE 1
#macro POPUP_INFOTYPE_COPY 2
#macro POPUP_INFOTYPE_INFO 3

#macro POPUP_RESPONSETYPE_Y 0
#macro POPUP_RESPONSETYPE_N 1
#macro POPUP_RESPONSETYPE_YN 2

width = POPUP_WIDTH;
height = POPUP_HEIGHT;
info_type = POPUP_INFOTYPE_CARE;
response_type = POPUP_RESPONSETYPE_YN;

popup_id = 0;

sentence = [];
colors = [];

hover_yes = false;
hover_no = false;

info_icon_width = sprite_get_width(get_popup_info_sprite(info_type));
info_icon_height = sprite_get_height(get_popup_info_sprite(info_type));


global.button_hovering_active = false;