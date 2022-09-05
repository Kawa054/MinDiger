//------------- 画面サイズ(16:9) --------------//
#macro WINDOW_SIZE_WIDTH 1920
#macro WINDOW_SIZE_HEIGHT 1080

//------------- スタート画面関係 --------------//

#macro START_BUTTON_WIDTH 600   //スタートボタンの横幅
#macro START_BUTTON_HEIGHT 200  //スタートボタンの縦幅

//rm_startのcolor_effectおよびblur_effectレイヤーの設定
#macro START_BACKGROUND_EFFECT_TIME 0.15 //スタートボタンを押した後の背景エフェクトまでの時間(秒)
#macro START_BACKGROUND_BLUR_SIZE_X 7 //背景ブラーサイズ(X方向)
#macro START_BACKGROUND_BLUR_SIZE_Y 7 //背景ブラーサイズ(Y方向)

#macro START_BACKGROUND_COLOR_INTENSITY 0.275 //背景の色の変化強度
#macro START_BACKGROUND_COLOR_R 204 //背景の色(R)
#macro START_BACKGROUND_COLOR_G 168 //背景の色(G)
#macro START_BACKGROUND_COLOR_B 142 //背景の色(B)
#macro START_BACKGROUND_COLOR_ALPHA 1 //背景の色(alpha)


//データ選択ボタン関係
#macro DATA_SELECT_CHARA_IMAGE_MARGIN 30 //主人公画像周りの余白
#macro DATA_SELECT_CHARA_IMAGE_BACKGROUNDCOLOR_R 209 //主人公の背景色(R)
#macro DATA_SELECT_CHARA_IMAGE_BACKGROUNDCOLOR_G 172 //主人公の背景色(G)
#macro DATA_SELECT_CHARA_IMAGE_BACKGROUNDCOLOR_B 133 //主人公の背景色(B)

#macro DATA_SELECT_BUTTON_WIDTH 1200 //ボタンの横幅
#macro DATA_SELECT_BUTTON_SEP_Y 20 //ボタンの縦間隔
#macro DATA_SELECT_BUTTON_MARGE_AMOUNT 0.25 //ボタン選択中(ホバー状態)の色の強さ(0~1)
#macro DATA_SELECT_BUTTON_MARGE_COLOR_R 255 //ボタン選択中の合成色(R)
#macro DATA_SELECT_BUTTON_MARGE_COLOR_G 255 //ボタン選択中の合成色(G)
#macro DATA_SELECT_BUTTON_MARGE_COLOR_B 255 //ボタン選択中の合成色(B)

#macro DATA_SELECT_BUTTON_BACKGROUNDCOLOR1_R 255 //通常時のボタンの背景色(R)
#macro DATA_SELECT_BUTTON_BACKGROUNDCOLOR1_G 214 //通常時のボタンの背景色(G)
#macro DATA_SELECT_BUTTON_BACKGROUNDCOLOR1_B 170 //通常時のボタンの背景色(B)
#macro DATA_SELECT_BUTTON_BACKGROUNDCOLOR2_R 255 //データ未生成時の背景色(R)
#macro DATA_SELECT_BUTTON_BACKGROUNDCOLOR2_G 234 //データ未生成時の背景色(G)
#macro DATA_SELECT_BUTTON_BACKGROUNDCOLOR2_B 208 //データ未生成時の背景色(B)

#macro DATA_SELECT_BUTTON_FRAMELINE_WIDTH 3 //枠線の幅
#macro DATA_SELECT_BUTTON_FRAMELINE1_COLOR_R 239 //通常時のボタンの枠線の色(R)
#macro DATA_SELECT_BUTTON_FRAMELINE1_COLOR_G 198 //通常時のボタンの枠線の色(G)
#macro DATA_SELECT_BUTTON_FRAMELINE1_COLOR_B 156 //通常時のボタンの枠線の色(B)
#macro DATA_SELECT_BUTTON_FRAMELINE2_COLOR_R 247 //データ未生成時の枠線の色(R)
#macro DATA_SELECT_BUTTON_FRAMELINE2_COLOR_G 226 //データ未生成時の枠線の色(G)
#macro DATA_SELECT_BUTTON_FRAMELINE2_COLOR_B 199 //データ未生成時の枠線の色(B)


//------------- Loading画面の設定 -------------//
#macro LOADING_MIN_TIME 2.0 //ロード画面の最短表示時間(何もロードするものがない場合の時間等)


//------------- 会話ボックスの色設定 --------------//

//会話ボックスの会話文の色
#macro DIALOG_TEXT_COLOR_R 255
#macro DIALOG_TEXT_COLOR_G 160
#macro DIALOG_TEXT_COLOR_B 122

//会話ボックスのキャラクターの名前の色
#macro DIALOG_CHARA_NAME_COLOR_R 30
#macro DIALOG_CHARA_NAME_COLOR_G 144
#macro DIALOG_CHARA_NAME_COLOR_B 255