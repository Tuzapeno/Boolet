// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_weapon(_name, _obj, _sprite, _damage, _arrbullets, _inaccuracy, _kick,
_sound, _spread_number, _spread_angle, _fullauto, _burst_number, _burst_delay) constructor {
    name = _name					// Name of the gun
	obj = _obj						// Weapon Object
    sprite = _sprite				// Gun sprite to draw
	damage = _damage				// Gun damage
	
	// Array of Ammo structs
    ammo = array_create(array_length(argument[4]))		
	for (var i = 0; i < array_length(ammo); ++i) {
	    ammo[@ i] = argument[4][@ i]
	}
	
    inaccuracy = _inaccuracy		// Random bullet angle inaccuracy
    kick = _kick					// Kickback to position and angle
    sound = _sound					// Shooting sound effect to play
    spread_number = _spread_number	// Number of bullets in spread
    spread_angle = _spread_angle	// Angle between each bullet in spread
    fullauto = _fullauto			// Shoot while holding down or only when pressed?
    burst_number =  _burst_number	// Number of bullets in burst
    burst_delay = _burst_delay		// Delay between bullets in burst
}

global.weapons = {
	guns : 
	{
		// Pistols
		colt : new create_weapon("Colt", oColt, sColt, 2, [global.bullets.pistol], 0, 1, noone, 1, 0, false, 0, 0),
		// Rifles
		ak47 : new create_weapon("AK47", oAK47, sAK47, 2, [global.bullets.rifle_auto], 0, 4, noone, 1, 0, true, 0, 0),
		// Shotgun
		shortbarrel : new create_weapon("Short Barrel", oShotgun, sShotgun, 1.5, [global.bullets.shotgun], 2, 6, noone, 4, 5, false, 0, 0),
		// Smgs
		silencedmag : new create_weapon("Silenced Mag", oSmg, sSmg, 1, [global.bullets.smg], 15, 3, noone, 1, 0, true, 0, 0),
		minigun : new create_weapon("Minigun", oMinigun, sMinigun, 1, [global.bullets.minigun], 15, 6, noone, 3, 0, true, 0, 0)
	},
}
