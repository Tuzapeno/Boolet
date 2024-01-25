/// @description Insert description here
// You can write your code in this editor

destroy = false
collided_instances = ds_list_create()
last_collision = -1

damage_array = []

// Add weapon base damage
array_push(damage_array, 
{
	damage: weapon_damage,
	damage_color: c_white
})


