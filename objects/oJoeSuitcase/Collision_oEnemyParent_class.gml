/// @description 

if ( ds_list_find_index(collided_instances, other.id) == -1 ) {
	ds_list_add(collided_instances, other.id)
	apply_damage(other, damage_array)
	
	other.hsp += lengthdir_x(5, dir);
	other.vsp += lengthdir_y(5, dir);
	
	var bonus = (0.2 * (global.work_points/10))*global.coffe_time
	stun(other, 2 + bonus);	
}




















