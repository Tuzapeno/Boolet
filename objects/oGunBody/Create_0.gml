/// @description Insert description here
// You can write your code in this editor

x = oCurrentWeapon.x
y = oCurrentWeapon.y



if instance_exists(oCurrentWeapon) {
	with oCurrentWeapon {
		other.sprite_index = weapon.sprite
	}
}
