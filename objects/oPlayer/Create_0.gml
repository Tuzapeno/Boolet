/// @description Insert description here
// You can write your code in this editor
// Definição de variáveis para o inventário

event_inherited()

enum PLAYER {
	IDLE,
	MOVING,
	ROLLING,
	HIT
}

state = PLAYER.IDLE;

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


// Character variables
image_speed = 0.3;
hsp = 0;
vsp = 0;
spd = 150;
mouse_direction = 0;
player_direction = 0;
dt = 0;


hforce = 0;
vforce = 0;

money = 0;
energy = 20;
material_grab_radius = 50;

immunity = false;
immunity_frames = 30;
immunity_frames_value = 30;

dash_spd = 0;
dash_time = immunity_frames;

max_hp = 10;
hp = max_hp;

#region functions

function next_weapon() {
    current_weapon_index = (current_weapon_index + 1) % 2;
    oWeapon.weapon = inventory[current_weapon_index];
	image_yscale = 1
}

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

function player_hit(_damage) {
	immunity = true
	immunity_frames = immunity_frames_value
	hp -= _damage
}	

function roll() {
	immunity = true;
	immunity_frames = 15;
	
	dash_time = immunity_frames;
	dash_spd = spd * 2 * dt;
	
}
	

#endregion
