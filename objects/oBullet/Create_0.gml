/// @description Insert description here
// You can write your code in this editor

destroy = false
collided_instances = ds_list_create()
last_collision = -1

damage_array = ds_list_create()

var inv_obj = oBulletInventory.inventory

// Add weapon base damage
ds_list_add(damage_array, 
{
	damage: weapon_damage,
	bullet_color: c_white
})

// Add Bullets damage
for (var i = 0; i < ds_list_size(inv_obj); ++i) {
	var _bullet = inv_obj[| i]
	
	ds_list_add(damage_array, 
	{
		damage: _bullet.bullet_info.damage,
		bullet_color: _bullet.bullet_info.bullet_color
	}
	)
	
}


