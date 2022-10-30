switch(hover_state){
		//設定ウィンドウの描画
		case 0:
			global.button_hovering_active = false;
			instance_activate_object(obj_setting_menu);
			instance_activate_object(obj_backbutton);
		break;
		
		case 1:
			create_popup(POPUP_ID_DANGEON_EXIT, POPUP_INFOTYPE_CARE, POPUP_RESPONSETYPE_YN, ["ダンジョン探索を諦めますか？", "（ダンジョン開始前の状態に戻ります）"], [
				c_black, 
				make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
			]);
		break;
		
		case 2:
			create_popup(POPUP_ID_DANGEON_GAME_EXIT, POPUP_INFOTYPE_CARE, POPUP_RESPONSETYPE_YN, ["ゲームを終了しますか？", "（ダンジョンの情報はセーブされません）"], [
				c_black, 
				make_color_rgb(POPUP_MAINCOLOR_R, POPUP_MAINCOLOR_G, POPUP_MAINCOLOR_B)
			]);;
		break;
		
		case 3:
			global.active_operate = true;
			instance_deactivate_object(id);
		break;
	}