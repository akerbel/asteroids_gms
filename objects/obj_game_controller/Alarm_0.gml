if (room != rm_game) {
	exit;
}

if (choose(0, 1) == 0) {
	var xx = irandom_range(0, room_width);
	var yy = 0;
}
else {
	var xx = 0;
	var yy = irandom_range(0, room_width);
}

var asteroid = instance_create_depth(xx, yy, 0, obj_asteroid);
asteroid.ast_type = choose("simple", "lava");
asteroid_update_sprite(asteroid);

alarm[0] = 60;