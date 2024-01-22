/// @description Insert description here
// You can write your code in this editor
// Definição de variáveis para o inventário

window_set_cursor(cr_none)

var wpmanager = instance_create_depth(x, y, depth, oCurrentWeapon)
instance_create_depth(x, y, depth, oBulletInventory)

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

// Character variables
image_speed = 0
looking_direction = 0
looking_quadrant = 0
hsp = 0
vsp = 0

spd = 150

hforce = 0
vforce = 0

money = 0
money_grab_radius = 50

invincibility = false
immunity_frames = 60
immunity_frames_value = 60

hp = 10

#region functions


function handle_mouse_look(_angle) {
	if (_angle == 0) {
		image_index = 2
		image_xscale = 1
	}
	else if ( _angle == 1 ) {
		image_index = 4
		image_xscale = 1
	}
	else if ( _angle == 2 ) {
		image_index = 2
		image_xscale = -1
	}
	else if ( _angle == 3 ) {
		image_index = 0
		image_xscale = -1
	}
}

function next_weapon() {
    current_weapon_index = (current_weapon_index + 1) % 2;
    oCurrentWeapon.weapon = inventory[current_weapon_index];
	image_yscale = 1
}

function switch_weapon(new_weapon) {
	var create = false
	
	
	if ( oCurrentWeapon.weapon != noone ) {
		var obj = oCurrentWeapon.weapon.obj
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
	
    oCurrentWeapon.weapon = inventory[current_weapon_index];
	
	if ( create ) {instance_create_depth(x, y, depth, obj)}
}

function player_hit(_damage) {
	invincibility = true
	immunity_frames = immunity_frames_value
	hp -= _damage
}	
	

#endregion
