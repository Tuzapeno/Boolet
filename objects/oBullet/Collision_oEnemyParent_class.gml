/// @description Insert description here
// You can write your code in this editor

if ( ds_list_find_index(collided_instances, other.id) == -1 ) {
	ds_list_add(collided_instances, other.id)
	destroy = true
	last_collision = other.collision_id
	other.flash_alpha = 1
	
	apply_damage(other, damage_array)	
}

destroy = true

