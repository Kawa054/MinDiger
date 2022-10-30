function get_dangeon_info(dangeon_id){
	switch(dangeon_id){
		case 0:
			dg_id = DANGEON_ID_PLAIN1;
			dg_type = DANGEON_TYPE_PLAIN;
			title = "チュートリアル";
			difficult = 1;
			stairs = 2;
			hasCleared = false;
			text = ["ゲームに関するチュートリアルを行うことができます。このダ", "ンジョン情報UIをクリックすることで遊べます。なお、フリー", "モードで得たものはストーリーへは引き継げません。下に表示", "されているモンスターはダンジョン内で出現します。"];
			enemy_img = [spr_enm_ishi];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
		case 1:
			dg_id = DANGEON_ID_PLAIN2;
			dg_type = DANGEON_TYPE_PLAIN;
			title = "そうげんのどうくつ";
			difficult = 2;
			stairs = 3;
			hasCleared = false;
			text = ["はじまりの村の近くの森のある洞窟。比較的広い洞窟が続いて", "おり内部は明るい。友好的なモンスターもおり、危険度は低い。", "洞窟内にはきのこが生えていたり、色々な物が落ちていること", "がある。"];
			enemy_img = [spr_enm_ant_left, spr_enm_mole_down, spr_enm_slime_down, spr_enm_ishi];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
		case 2:
			dg_id = DANGEON_ID_PLAIN3;
			dg_type = DANGEON_TYPE_PLAIN;
			title = "しずかないわば";
			difficult = 2;
			stairs = 4;
			hasCleared = false;
			text = ["森の中にある静かな洞窟。入り組んだ構造になっていることが", "多く、やや暗くなっている。洞窟の中にはまれに水場があり、", "その近くには特定の友好的なモンスターが出現することがある。", ""];
			enemy_img = [spr_enm_ant_left, spr_enm_mole_down, spr_enm_upa_down, spr_enm_slime_down, spr_enm_ishi, spr_enm_daiou_down];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
		case 3:
			dg_id = DANGEON_ID_PLAIN4;
			dg_type = DANGEON_TYPE_PLAIN;
			title = "まちへのちかみち";
			difficult = 3;
			stairs = 5;
			hasCleared = false;
			text = ["街へ行くための近道になっている洞窟であるが、やや危険であ", "り、付近の住民からは入らないように声掛けがされている。", "ダンジョン内にはときどき浮遊する謎の物体が出現するという", "噂話があるとかないとか..."];
			enemy_img = [spr_enm_ant_left, spr_enm_mole_down, spr_enm_upa_down, spr_enm_slime_down, spr_enm_ishi, spr_enm_daiou_down, spr_enm_artifact_on];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
		case 4:
			dg_id = DANGEON_ID_DESERT1;
			dg_type = DANGEON_TYPE_DESERT;
			title = "さばくのどうくつ";
			difficult = 3;
			stairs = 4;
			hasCleared = false;
			text = ["最近見つかった大きな砂漠にある洞窟であり、調査が必要とさ", "れている。内部にはよいツルハシを作るための鉱石が豊富に存", "在するが、鉱石のまわりにはモンスターがよくいるため注意が", "必要である。"];
			enemy_img = [];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
		case 5:
			dg_id = DANGEON_ID_DESERT2;
			dg_type = DANGEON_TYPE_DESERT;
			title = "すなのめいきゅう";
			difficult = 4;
			stairs = 6;
			hasCleared = false;
			text = ["砂漠の洞窟の先に見つかった謎の迷宮。入り組んだ地形になっ", "っており迷う人が続出しており、また内部に危険なモンスター", "が多く存在するためかなり危険なダンジョンとなっている。", "地下に行けば行くほど暗くなっているそうだ。"];
			enemy_img = [spr_enm_ghost_down];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
		case 6:
			dg_id = DANGEON_ID_DESERT3;
			dg_type = DANGEON_TYPE_DESERT;
			title = "さばくのこだいいせき";
			difficult = 5;
			stairs = 8;
			hasCleared = false;
			text = ["砂漠で発見された巨大な古代遺跡であり、多くの財宝が眠ると", "されている。比較的暗いダンジョンであり、一部のモンスター", "に攻撃されると体に異常が発生するらしく危険なダンジョンで", "ある。なお、墓荒らしは絶対にしないように。"];
			enemy_img = [spr_enm_ghost_down, spr_enm_tutan_down];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
		case 7:
			dg_id = DANGEON_ID_ICE1;
			dg_type = DANGEON_TYPE_ICE
			title = "こおりのどうくつ";
			difficult = 4;
			stairs = 7;
			hasCleared = false;
			text = ["氷河地帯の村の近場で発見された洞窟であり、中は暗めで広め", "の空間が広がっているとされている。", "", ""];
			enemy_img = [];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
		case 8:
			dg_id = DANGEON_ID_ICE2;
			dg_type = DANGEON_TYPE_ICE;
			title = "クレバスのおくそこ";
			difficult = 6;
			stairs = 8;
			hasCleared = false;
			text = ["氷河の調査隊が発見した、クレバスの切れ目の深くにある洞窟。", "内部は非常に暗い空間となっており、足場が取られる場所も多", "い。開けた空間には凶暴な雪男が存在するらしく、調査隊が奥", "の調査をできない原因となっている。"];
			enemy_img = [spr_enm_snowman_down];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
		case 9:
			dg_id = DANGEON_ID_ICE3;
			dg_type = DANGEON_TYPE_ICE;
			title = "ひょうがのだいどうくつ";
			difficult = 7;
			stairs = 11;
			hasCleared = false;
			text = ["氷河の最奥部にある巨大な洞窟であり、何かが隠されているよう", "な雰囲気が漂っている。", "", ""];
			enemy_img = [spr_enm_artifact_on, spr_enm_snowman_down];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];	
		break;
		
		case 10:
			dg_id = DANGEON_ID_VOLCANO1;
			dg_type = DANGEON_TYPE_VOLCANO;
			title = "かざんのいわば";
			difficult = 6;
			stairs = 8;
			hasCleared = false;
			text = ["火山の村の近くにある洞窟。挑戦的な村人が腕試しとしてダン", "ジョンへ潜ることもあるらしく、このダンジョンをクリアでき", "れば一人前と認められるようだ。ダンジョン内には珍しい鉱石", "があり、ツルハシの強化に使えるとか。"];
			enemy_img = [];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
		case 11:
			dg_id = DANGEON_ID_VOLCANO2;
			dg_type = DANGEON_TYPE_VOLCANO;
			title = "ようがんどうくつ";
			difficult = 8;
			stairs = 12;
			hasCleared = false;
			text = ["グツグツと煮えたぎる溶岩があふれる危険な火山の洞窟。奥に", "ある巨大な火山へ進むためにはこの洞窟を進まないといけない", "が、洞窟内部は危険なモンスターがあふれており容易には突破", "できず、あらゆる調査隊が諦めてきた。"];
			enemy_img = [spr_enm_hidaruma_left];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
		case 12:
			dg_id = DANGEON_ID_VOLCANO3;
			dg_type = DANGEON_TYPE_VOLCANO;
			title = "だいかざん";
			difficult = 9;
			stairs = 15;
			hasCleared = false;
			text = ["秘宝が隠されていると言われている巨大な火山内部の洞窟であ", "り、内部には危険なモンスターが多く存在し、地獄の入口と形", "容されている。生半可な気持ちで入ればすぐに命を落とすこと", "になるだろう。"];
			enemy_img = [spr_enm_hidaruma_left];
			return [dg_id, dg_type, title, difficult, stairs, hasCleared, text, enemy_img];
		break;
		
	}
}