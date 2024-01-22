/// @description Insert description here
// You can write your code in this editor

if !instance_exists(oCurrentWeapon) { exit }

sight = oSight
stock = oStock
foregrip = oForegrip
laser = oLaser

x = oCurrentWeapon.x
y = oCurrentWeapon.y

with oCurrentWeapon {
	other.sprite_index = weapon.sprite
	other.image_angle = image_angle
	other.image_xscale = image_xscale
	other.image_yscale = image_yscale
}


