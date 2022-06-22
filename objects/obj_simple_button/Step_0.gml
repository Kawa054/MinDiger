var _hover = get_button_hover();
var _click = _hover && mouse_check_button_released(mb_left);

hover = lerp(hover, _hover, 0.1);
y = lerp(y, ystart - _hover * 8, 0.1);

if(_click && ascript >= 0){
	script_execute(ascript);
}
