if (room == rm_game) {

	repeat (4) {
		create_starting_asteroid();
	}
	
	repeat (2) {
		create_starting_asteroid("lava");
	}

}

function create_starting_asteroid(ast_type = "simple") {
	var xx = choose(irandom_range(0, room_width / 3), irandom_range((room_width / 3) * 2, room_width));
	var yy = choose(irandom_range(0, room_height / 3), irandom_range((room_height / 3) * 2, room_height));
	var asteroid = instance_create_depth(xx, yy, 0, obj_asteroid);
	asteroid.ast_type = ast_type;
	asteroid_update_sprite(asteroid);
}

alarm[0] = room_speed * 4;