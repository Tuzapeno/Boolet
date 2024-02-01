///@desc Receives an array with all damage
///@param target
///@param damage_array

function apply_damage(_target, _damage_array) {
	with _target {
		if (immunity) return;
		
	
		var size = array_length(_damage_array);
	
		for (var i = 0; i < size; ++i) {
			hp -= _damage_array[i].damage // Apply the damage
			create_floating_text( string(_damage_array[i].damage), _damage_array[i].damage_color ) // Show numbers
		}
		
		flash_alpha = 1;
	}
}

function heal(_target, _amount) {
	with _target {
		
		hp += _amount 
		create_floating_text( string(_amount), c_green );
		// vfx?
	}
}