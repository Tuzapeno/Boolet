/// @description Insert description here
// You can write your code in this editor

collision_id = noone
hp = 1;
flash_alpha = 1;

function die() {
	create_material(MATERIAL.MONEY, irandom_range(1,3))
	
	if chance(0.5)
		create_material(MATERIAL.ENERGY, irandom_range(1,3))	
		
	instance_destroy();
}


