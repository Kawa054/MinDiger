function get_pickaxe_text(pid){
	switch(pid){
		case ITEM_PICKAXE_NORMAL:
			return ["多くの人が使っている、どんなダンジョンでも使えるオール", "ラウンドでシンプルなツルハシ。ほりレベルはブロックの壊", "しやすさを表している。"];
		break;
		
		case ITEM_PICKAXE_ATTACK:
			return ["より攻撃的な形で作られたツルハシで、ふつうのツルハシよ", "りも敵を倒しやすくなっている。これがあれば怖いものなし", "だろう。"];
		break;
		
		case ITEM_PICKAXE_SPEED:
			return ["ブロックをより壊しやすいように改良されたツルハシ。ふつ", "うのツルハシでは二回壊す必要のあるブロックをこれなら一", "回振るだけで壊すことができる。"];
		break;
	}
}