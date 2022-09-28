// @param x_direction 
// @param y_direction

function action(argument0, argument1){
	var action_key_pressed = argument0;
	var face = argument1;
	
	var instance_id_data = noone;

	//プレイヤーの方向にアクション可能のオブジェクトがあるかを取得
	var x_direction = dcos(90*face);
	var y_direction = -dsin(90*face);
	instance_id_data = instance_place(x + action_width*x_direction, y + action_height*y_direction, obj_npc);
	//show_debug_message(90*face);
	if(instance_id_data != noone){
		if(action_key_pressed){
			obj_player.is_action = true;
			//show_debug_message(variable_instance_get(instance_id_data, "npc_id"));	
			var sentence_num = variable_instance_get(instance_id_data, "sentence_num");
			var iid = instance_create_depth(instance_id_data.x, instance_id_data.y, -9999, obj_textbox);
			with(iid){
				iid.textbox_x = iid.x + 88;
				iid.textbox_y = iid.y - iid.textbox_height + 30;
				iid.textbox_chara_name = variable_instance_get(instance_id_data, "name");
				for(var i = 1; i <= sentence_num; i++){
					var text = variable_instance_get(instance_id_data, "talk_sentence"+string(i));
					register_text(text);
				}
			}
		}
	}
}
