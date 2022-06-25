// @param x_direction 
// @param y_direction

function action(argument0, argument1, argument2){
	var action_key_pressed = argument0;
	var x_direction = argument1;
	var y_direction = argument2;
	
	var instance_id_data = noone;
	
	//アクションキーが押されていた場合:
	//開発中.
	if(action_key_pressed){
		//プレイヤーが停止中の場合
		if(x_direction == 0 && y_direction == 0){
			//instance_id_data = instance_place(x + action_width, )
		}else if(x_direction != 0 && y_direction == 0){
			instance_id_data = instance_place(x + action_width*x_direction, y, obj_npc);
		}else if(x_direction == 0 && y_direction != 0){
			instance_id_data = instance_place(x, y + action_height*y_direction, obj_npc);
		}
		if(instance_id_data != noone)
			show_debug_message(variable_instance_get(instance_id_data, "npc_id"));	
			var sentence_num = variable_instance_get(instance_id_data, "sentence_num");
			with(instance_create_depth(0, 0, -9999, obj_textbox)){
				for(var i = 1; i <= sentence_num; i++){
					var text = variable_instance_get(instance_id_data, "talk_sentence"+string(i));
					register_text(text);
				}
			}
	}
}
