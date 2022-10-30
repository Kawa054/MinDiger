state = FREEITEM_MENU_STATE_PICKAXE; //どの設定群か
hover_state = FREEITEM_MENU_STATE_PICKAXE;
clicked = false;

width = MODE_FREE_SELECT_ITEMMENU_WIDTH;
height = MODE_FREE_SELECT_ITEMMENU_HEIGHT;
upper_width = (width - 2*MODE_FREE_SELECT_ITEMMENU_UPPER_MARGIN)/3;

decide_hover = -1;

pickaxe_id = 0;
pickaxe_id_hover = 0;
player_health = 5;
health_hover = -1;

plus_hover = -1;
minus_hover = -1;

item_id = 0;
item_nums = [0, 0, 0,  0, 0, 0,  0, 0, 0];

x = (window_get_width() - width) / 2;
y = (window_get_height() - height) / 2;