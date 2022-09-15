//------------- 画面サイズ(16:9) --------------//
#macro WINDOW_SIZE_WIDTH 1920
#macro WINDOW_SIZE_HEIGHT 1080

//------------- スタート画面関係 --------------//

#macro START_BUTTON_Y 760   //スタートボタンのY座標(X座標は自動で画面中心になるS)
#macro SETTING_BUTTON_X 1700 //設定ボタンのX座標
#macro SETTING_BUTTON_Y 70  //設定ボタンのY座標
#macro BACK_BUTTON_X 100 //戻るボタンのX座標
#macro BACK_BUTTON_Y 100 //戻るボタンのY座標

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
#macro DATA_SELECT_BUTTON_MARGE_AMOUNT 0.32 //ボタン選択中(ホバー状態)の色の強さ(0~1)
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
#macro LOADING_START_TIME 0.3 //ロード画面までの暗転時間
#macro LOADING_MIN_TIME 1.5 //ロード画面の最短表示時間(何もロードするものがない場合の時間等)


//------------- モード画面の設定 -------------//
#macro MODE_SELECT_Y 100 //モード選択UIのY座標
#macro MODE_SELECT_SEP_X 40 //モード選択UIの横間隔
#macro MODE_SELECT_NAMEBAND_MARGIN_Y 0 //モードの名前の帯の縦方向マージン

//------------- 設定画面の設定 -----------------//
#macro SETTINGS_MENU_WIDTH 1400 //設定ウィンドウの横幅
#macro SETTINGS_MENU_HEIGHT 700 //設定ウィンドウの縦幅

#macro SETTINGS_FONT_COLOR_R 83 //設定ウィンドウの文字色(R)
#macro SETTINGS_FONT_COLOR_G 74 //設定ウィンドウの文字色(G)
#macro SETTINGS_FONT_COLOR_B 64 //設定ウィンドウの文字色(B)

#macro SETTINGS_MENU_UPPER_HEIGHT 80 //設定ウィンドウの項目(設定群の選択部分)の縦幅
#macro SETTINGS_MENU_UPPER_MARGIN 20 //設定群の間隔

#macro SETTINGS_BACKGROUND_COLOR_R 255 //設定ウィンドウの背景色(R)
#macro SETTINGS_BACKGROUND_COLOR_G 234 //設定ウィンドウの背景色(G)
#macro SETTINGS_BACKGROUND_COLOR_B 208 //設定ウィンドウの背景色(B)

#macro SETTINGS_NON_SELECTED_COLOR_R 232 //未選択の設定群の背景色(R)
#macro SETTINGS_NON_SELECTED_COLOR_G 199 //未選択の設定群の背景色(G)
#macro SETTINGS_NON_SELECTED_COLOR_B 160 //未選択の設定群の背景色(B)

//------------- 会話ボックスの色設定 --------------//

//会話ボックスの会話文の色
#macro DIALOG_TEXT_COLOR_R 255
#macro DIALOG_TEXT_COLOR_G 160
#macro DIALOG_TEXT_COLOR_B 122

//会話ボックスのキャラクターの名前の色
#macro DIALOG_CHARA_NAME_COLOR_R 30
#macro DIALOG_CHARA_NAME_COLOR_G 144
#macro DIALOG_CHARA_NAME_COLOR_B 255