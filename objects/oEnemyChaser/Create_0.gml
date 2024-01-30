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

