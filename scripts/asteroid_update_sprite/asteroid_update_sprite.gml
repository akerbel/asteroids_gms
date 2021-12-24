// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/**
 * Update asteroid sprite regarding his parameters.
 *
 * @param asteroid - asteroid instance.
 */
function asteroid_update_sprite(asteroid){
	asteroid.sprite_index = asset_get_index("spr_asteroid_" + asteroid.ast_type + "_" + asteroid.ast_size);
}