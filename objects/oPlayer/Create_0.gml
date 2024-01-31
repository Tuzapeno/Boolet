/// @description Insert description here
// You can write your code in this editor
// Definição de variáveis para o inventário

event_inherited();

enum PLAYER {
	ARRIVING,
	IDLE,
	MOVING,
	ROLLING,
	HIT
}

z_vsp = 0;
z_grav = 0.8;
z_max_vsp = 10;
z = camera_get_view_y(VIEW_CAMERA) - sprite_height;

state = player_state_arriving;

var wpmanager = instance_create_depth(x, y, depth, oWeapon)

instance_create_depth(x, y, depth, oAK47)
instance_create_depth(x, y, depth, oColt)
instance_create_depth(x, y, depth, oShotgun)
instance_create_depth(x, y, depth, oSmg)
instance_create_depth(x, y, depth, oMinigun)

inventory = array_create(2);
inventory[0] = global.weapons.guns.ak47;
inventory[1] = global.weapons.guns.shortbarrel;
current_weapon_index = 0;

wpmanager.weapon = inventory[0]

// Keys

left_key = false;
right_key = false;
up_key = false;
down_key = false;
roll_key = false;

interact_key = false;

// COMMON



// Character variables
image_speed = 0.3;

mouse_direction = 0;
player_direction = 0;
dt = 0;

money = 0;
energy = 20;
material_grab_radius = 50;

dash_spd = 0;
dash_time = immunity_frames;


dash_curve_pos = 0;
dash_curve_spd = 0.05;

function switch_weapon(new_weapon) {
	var create = false
	
	
	if ( oWeapon.weapon != noone ) {
		var obj = oWeapon.weapon.obj
		create = true
	}
	
	if ( array_contains(inventory, noone) ) {
		inventory[array_get_index(inventory, noone)] = new_weapon
		create = false
	} 
	else {
		inventory[current_weapon_index] = new_weapon
		create = true
	}
	
    oWeapon.weapon = inventory[current_weapon_index];
	
	if ( create ) {instance_create_depth(x, y, depth, obj)}
}

function roll() {
	immunity = true;
	immunity_frames = immunity_frames_value;
	
	dash_time = immunity_frames;
	dash_spd = spd * 5 * dt;
	dash_curve_pos = 0;
	dash_curve_spd = 1 / immunity_frames;
	
}
