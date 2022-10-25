#macro BLACKOUT_DG_DEACTIVATE -1
#macro BLACKOUT_DG_START1 0
#macro BLACKOUT_DG_RETURN1 1
#macro BLACKOUT_DG_SHOW 3
#macro BLACKOUT_DG_START2 4
#macro BLACKOUT_DG_START_STAIR_UP 5

#macro BLACKOUT_TIME_DG 0.7

mode = BLACKOUT_DG_DEACTIVATE;
timer = 0;
finished = false;

global.active_draw_gui1 = false;
global.active_operate = false;
global.active_press_gui1 = false;