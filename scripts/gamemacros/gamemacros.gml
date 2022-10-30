global.button_hovering_active = true;

//オブジェクトの方向, 三角関数値と対応させる
#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3

//保存可能セーブデータ数の設定
#macro SAVEDATA_NUM 4

//セーブデータファイル関連
#macro SAVEDATA_DIR "SaveData/data"
#macro SAVEDATA_DATAFILE "/savedata.json"

#macro SETTINGS_STATE_GENERAL 0
#macro SETTINGS_STATE_KEY 1
#macro SETTINGS_STATE_VIDEO 2
#macro SETTINGS_STATE_AUDIO 3

#macro FREEITEM_MENU_STATE_PICKAXE 0
#macro FREEITEM_MENU_STATE_HP 1
#macro FREEITEM_MENU_STATE_ITEMS 2

#macro POPUP_ID_EXIT 0
#macro POPUP_ID_COPY 1
#macro POPUP_ID_DELETE 2
#macro POPUP_ID_PLUS 3
#macro POPUP_ID_HOME 4
#macro POPUP_ID_SETTING_CONFIRM 5


#macro POPUP_ID_GAME_STORY 100
//#macro POPUP_ID_STORY_EXIT 101

#macro POPUP_ID_GAME_FREE 110
#macro POPUP_ID_FREE_EXIT 111
#macro POPUP_ID_FREE_CONFIRM 112

#macro POPUP_ID_GAME_CHALLENGE 120
#macro POPUP_ID_CHALLENGE_EXIT 121

#macro POPUP_ID_DANGEON_EXIT 21
#macro POPUP_ID_DANGEON_GAME_EXIT 22

#macro PLAYER_HEALTH_MAX 5
#macro UPDATE_GRID_SIZE_X 5
#macro UPDATE_GRID_SIZE_Y 5

#macro WALL_SHADOW_UPDATE_X 15
#macro WALL_SHADOW_UPDATE_Y 15

#macro ITEM_PICKAXE_NORMAL 0
#macro ITEM_PICKAXE_ATTACK 1
#macro ITEM_PICKAXE_SPEED 2

#macro ITEM_ID_TORCH 0
#macro ITEM_ID_YARI1 1
#macro ITEM_ID_PORTION1 2
#macro ITEM_ID_YARI2 4
#macro ITEM_ID_PORTION2 5
#macro ITEM_ID_YARI3 7
#macro ITEM_ID_PORTION3 8

var str ="あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわゐゑをんがぎぐげござじずぜぞだぢづでどばびぶべぼぱぴぷぺぽぁぃぅぇぉっゃゅょアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヰヱヲンガギグゲゴザジズゼゾダヂヅデドバビブベボパピプペポァィゥェォッャュョヴ、。ー～「」【】『』゛゜♪♭■□◆◇△▲▽▼◎○●◯‥…・∴∵※×〒!”#$%&'()=~|`{+*}<>?_-^\@[;:],./\！”＃＄％＆’（）＝~｜｀｛＋＊｝＜＞？＿－＾\＠［；：］，．／\abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ０１２３４５６７８９";