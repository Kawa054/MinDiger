//ms関連の初期化関数
function init_ms_button(){
	var number = argument[0];
	var obj = argument[1];
	var band = argument[2];
	
	obj.x = (display_get_gui_width() - get_msUI_width()) / 2 + number*(obj.width + MODE_SELECT_SEP_X);
	obj.xstart = obj.x;
	obj.y = MODE_SELECT_Y;
	obj.ystart = obj.y;
	band.x = obj.x + (obj.width)/2 - (band.width)/2;
	band.xstart = band.x;
	band.y = obj.y + obj.height + MODE_SELECT_NAMEBAND_MARGIN_Y;
	band.ystart = band.y;
}