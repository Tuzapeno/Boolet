///@desc Receives a ds_list with all damage (Base Weapon + Bullets)
///@arg _damage_array ds_list containing struct of all damages

function apply_damage(_damage_array) {
	
	var size = ds_list_size(argument0);
	
	for (var i = 0; i < size; ++i) {
		hp -= argument0[|i].damage // Apply the damage
		create_floating_text( string(argument0[|i].damage), argument0[|i].bullet_color ) // Show numbers
	}

}