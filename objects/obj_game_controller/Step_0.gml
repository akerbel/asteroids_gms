switch (room) {

	case rm_start:
		if (keyboard_check_pressed(vk_enter)) {
			room_goto(rm_game);
		}
	break;
	
	case rm_gameover:
		if (keyboard_check_pressed(vk_enter)) {
			game_restart();
		}
	break;
	
	case rm_game:
		if (lives <= 0) {
			room_goto(rm_gameover);
		}
	
		if (keyboard_check_pressed(vk_enter) && instance_number(obj_player) <= 0) {
			instance_create_depth(room_width / 2, room_height / 2, 0, obj_player);
		}
	break;
}