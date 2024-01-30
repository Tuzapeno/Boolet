/// @description Insert description here
// You can write your code in this editor

event_inherited()

collision_id = CHASER_COLLISION

enum CHASER {
	IDLE,
	FOLLOWING,
	HITTED,
	PLAYER_CONTACT,
	RECOVERY,
	DEAD
}

image_speed = 0

// Stats
hp = 5
spd_max = 150
spd = spd_max
hsp = 0
vsp = 0
contact_damage = 2
detect_radius = 200
state = CHASER.IDLE

dir = 0
knockback_dir = 0

function apply_force(_length, _dir) {
	hsp += lengthdir_x(_length, _dir)
	vsp += lengthdir_y(_length, _dir)
}

function die() {
	create_material(MATERIAL.MONEY, irandom_range(1,3))
	
	if chance(0.5)
		create_material(MATERIAL.ENERGY, irandom_range(1,3))	
		
	repeat(irandom_range(3,5)) {
		with( instance_create_depth(x, y, depth-1, oParticle) ) {
			var dir = irandom(360);
			debris = true;
			sprite_index = sEnemyDebris;
			image_speed = 0;
			image_index = irandom_range(0, image_number-1);
			fric = 0.9;
			image_angle = dir;
			motion_add(dir, random_range(1, 3));
		}		
	}
		
	instance_destroy();
}