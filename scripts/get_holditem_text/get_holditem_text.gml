function get_holditem_text(item_id){
	switch(item_id){
		case ITEM_ID_TORCH:
			return ["ダンジョン内の壁においておくことでダンジョン内を", "明るくすることができる。", ""];
		break;
		
		case ITEM_ID_YARI1:
			return ["遠くの敵に攻撃したいときに使える便利な飛び道具", "投げることで当たった敵に1ダメージ与える。", ""];
		break;
		
		case ITEM_ID_PORTION1:
			return ["飲むと体力を0.5だけ回復する薬。街に売ってある。", "", ""];
		break;
		
		case ITEM_ID_YARI2:
			return ["遠くの敵に攻撃したいときに使える便利な飛び道具", "投げることで当たった敵に2ダメージ与える。", ""];
		break;
		
		case ITEM_ID_PORTION2:
			return ["飲むと体力を2だけ回復する、ふつうの薬よりも上質", "な薬。ときどきダンジョンに落ちていることもある。", ""];
		break;
		
		case ITEM_ID_YARI3:
			return  ["遠くの敵に攻撃したいときに使える便利な飛び道具", "投げることで当たった敵に4ダメージ与える。", ""];
		break;
		
		case ITEM_ID_PORTION3:
			return ["飲むと体力をすべて回復する特上の薬。流通してお", "らず、危ないダンジョン内で入手できることがある。", ""];
		break;
	}
}