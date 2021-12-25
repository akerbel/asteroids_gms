switch (room) {
	
	case rm_game:
	
		draw_text(10, 10, "SCORE: " + string(score));
		draw_text(10, 30, "LIVES: " + string(lives));

		if (instance_number(obj_player) < 1) {
			draw_set_halign(fa_center);
			draw_text(room_width / 2, room_height / 2, "Press >>ENTER<< to continue");
			draw_set_halign(fa_left);
		}
	break;
	
	case rm_start:
	
		draw_set_halign(fa_center);
		var c2 = make_color_rgb(48, 156, 242);
		var c1 = make_color_rgb(38, 44, 122);
		draw_text_transformed_color(room_width / 2, room_height / 4, "ASTEROIDS", 
			5, 5, 0, c1, c2, c1, c2, 1);
			
		draw_text(room_width / 2, room_height / 4 + 100, 
		@"
WASD: move
SPACE: shoot

Press >>ENTER<< to start");
		draw_set_halign(fa_left);

	break;
	
	case rm_gameover:
		draw_set_halign(fa_center);
		var c1 = c_red;
		draw_text_transformed_color(room_width / 2, 50, "GAME OVER", 
			5, 5, 0, c1, c1, c1, c1, 1);
			
		draw_text(room_width / 2, room_height / 4 + 100, "Your score: " + string(score));
		draw_text(room_width / 2, room_height / 4 + 150, "Press >>ENTER<< to restart");
		draw_set_halign(fa_left);
		
	break;
}