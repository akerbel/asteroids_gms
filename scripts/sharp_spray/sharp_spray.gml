// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/**
 * Spray sharps.
 *
 * @param object - object which sprays the sharps.
 * @param count - count of sharps.
 * @param sharp_obj - sharp object.
 */
function sharp_spray(object, count = 10, sharp_object = obj_sharp){
	
	instance_create_depth(object.x, object.y, 0, obj_explosion);
	
	repeat (count) {
		instance_create_depth(object.x, object.y, 0, sharp_object);
	}
}