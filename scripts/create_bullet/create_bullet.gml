// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_bullet(
_sprite, _bullet_case, _spd, _rate_start, 
_rate_end, _rate_mult, _firerate) 
constructor {
    sprite = _sprite			// Bullet sprite to draw
	bullet_case = _bullet_case	// Bullet case sprite
    spd = _spd					// Speed of bullet movement
    rate_start = _rate_start	// Initial firerate of bullet
    rate_end = _rate_end		// Max firerate of bullet
    rate_mult = _rate_mult		// Multiplication in firerate per shot
    firerate = _firerate		// Current firerate
}

global.bullets = {
	// Pistols
	pistol : new create_bullet(sYellowBullet, sYellowBulletCase, 15, 25, 0, 0, 25),
	// Rifles
	rifle_auto : new create_bullet(sYellowBullet, sYellowBulletCase, 25, 5, 5, 0.1, 5),
	// Shotguns
	shotgun : new create_bullet(sYellowBullet, sRedBulletCase, 20, 30, 0, 0.1, 30),
	// Smgs
	smg : new create_bullet(sSmgBullet, sSmgBulletCase, 23, 6, 3, 0.5, 20),
	minigun : new create_bullet(sSmgBullet, sSmgBulletCase, 23, 40, 3, 0.3, 20)
}

