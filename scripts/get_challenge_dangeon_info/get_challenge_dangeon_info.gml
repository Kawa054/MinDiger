function get_challenge_dangeon_info(dangeon_id){
	switch(dangeon_id){
		case 0:
			dg_id = DANGEON_ID_CHALLENGE1;
			dg_type = DANGEON_TYPE_PLAIN;
			title = "チャレンジ01";
			difficult = 1;
			stairs = 5;
			hasCleared = false;
			text = ["真っ暗で周りがあまり見えない洞窟内部をクリアするチャレンジ", "です。たいまつは所持できず、ダンジョン内で手に入れることもできません。", "", ""];
			enemy_img = [spr_enm_ishi];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
		case 1:
			dg_id = DANGEON_ID_CHALLENGE2;
			dg_type = DANGEON_TYPE_DESERT;
			title = "チャレンジ02";
			difficult = 2;
			stairs = 3;
			hasCleared = false;
			text = ["ツタンカーメンが大量発生します。", "", "", ""];
			enemy_img = [spr_enm_tutan_down, spr_enm_tutan_down, spr_enm_tutan_down, spr_enm_tutan_down, spr_enm_tutan_down, spr_enm_tutan_down, spr_enm_tutan_down, spr_enm_tutan_down, spr_enm_tutan_down, spr_enm_tutan_down, spr_enm_tutan_down, spr_enm_tutan_down];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
		case 2:
			dg_id = DANGEON_ID_CHALLENGE3;
			dg_type = DANGEON_TYPE_PLAIN;
			title = "チャレンジ03";
			difficult = 2;
			stairs = 4;
			hasCleared = false;
			text = ["森の中にある静かな洞窟。入り組んだ構造になっていることが", "多く、やや暗くなっている。洞窟の中にはまれに水場があり、", "その近くには特定の友好的なモンスターが出現することがある。", ""];
			enemy_img = [spr_enm_ant_left, spr_enm_mole_down, spr_enm_upa_down, spr_enm_slime_down, spr_enm_ishi, spr_enm_daiou_down];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;	
	}
}