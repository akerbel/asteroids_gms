draw_text(10, 10, "SCORE: " + string(score));
draw_text(10, 25, "LIVES: " + string(lives));

if (instance_number(obj_player) < 1) {
	draw_set_halign(fa_center);
	draw_text(room_width / 2, room_height / 2, "Press SPACE to continue");
	
	if (keyboard_check_pressed(vk_space)) {
		instance_create_depth(room_width / 2, room_height / 2, 0, obj_player);
	}
	draw_set_halign(fa_left);
}
