if (keyboard_check(vk_left) or keyboard_check(ord("A"))){
	image_angle += 5;
}

if (keyboard_check(vk_right) or keyboard_check(ord("D"))){
	image_angle -= 5;
}

if (keyboard_check(vk_up) or keyboard_check(ord("W"))){
	motion_add(image_angle, 0.05);
	if (!audio_is_playing(snd_thrusters)) {
		audio_play_sound(snd_thrusters, 10, false);
	}
}

if (keyboard_check(vk_down) or keyboard_check(ord("S"))){
	motion_add(image_angle, -0.05);
	if (!audio_is_playing(snd_thrusters)) {
		audio_play_sound(snd_thrusters, 10, false);
	}
}

if (keyboard_check(vk_nokey)) {
	audio_stop_sound(snd_thrusters);
}

move_wrap(true, true, sprite_height/2);

if (keyboard_check_pressed(vk_space)) {
	if (instance_number(obj_bullet) <= max_bullet_count) {
		var bullet = instance_create_depth(x, y, 0, obj_bullet);
		bullet.direction = image_angle;
	}
	else {
		audio_play_sound(snd_no_ammo, 1, false);
	}
} 