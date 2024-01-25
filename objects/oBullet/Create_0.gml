/// @description Insert description here
// You can write your code in this editor

destroy = false
collided_instances = ds_list_create()
last_collision = -1

damage_array = ds_list_create()

// Add weapon base damage
ds_list_add(damage_array, 
{
	damage: weapon_damage,
	bullet_color: c_white
})


