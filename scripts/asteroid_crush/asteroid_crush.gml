// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/**
 * Crush asteroid to smaller asteroids
 *
 * @param asteroid - asteroid instance.
 * @param count - count of new asteroids.
 */
function asteroid_crush(asteroid, count = 2){
	var new_size = "big";
	if (asteroid.ast_size == "big") {
		new_size = "middle";
	}
	else if (asteroid.ast_size == "middle") {
		new_size = "small";
	}
	
	repeat (count) {
		var new_asteroid = instance_create_depth(x, y, 0, obj_asteroid);
		new_asteroid.ast_size = new_size;
		new_asteroid.ast_type = asteroid.ast_type;
		asteroid_update_sprite(new_asteroid);
		
		switch ast_type {
			case "lava":
				sharp_spray(asteroid, 3, obj_sharp_lava);
			break;
		}
	}
}