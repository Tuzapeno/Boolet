// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shoot(){
	with oWeapon 
	{
		// Play sound
		// Play shooting sound at random gain and pitch to give variety
		// audio_play_sound(weapon.sound, 10, false, random_range(0.8,1), 0, random_range(0.8, 1)); 
		
		var _dist = sprite_get_width(weapon.sprite) - sprite_get_xoffset(weapon.sprite) + sprite_get_width(weapon.ammo[bullet_index].sprite);
		
		for (var i = 0; i < weapon.spread_number; ++i) {
		    var _angle = image_angle + (i * weapon.spread_angle) - ((weapon.spread_number - 1) * (weapon.spread_angle / 2));
			
			with 
			instance_create_depth(
			x + lengthdir_x(_dist, image_angle), 
			y + lengthdir_y(_dist, image_angle), 
			depth - 1,
			oBullet,
			{
				image_angle: _angle + random_range(-real_innaccuracy, real_innaccuracy),
				sprite_index: weapon.ammo[bullet_index].sprite,
				spd: weapon.ammo[bullet_index].spd,
				weapon_damage: real_damage
			})
			
			{ 
				image_xscale = max(1, spd/sprite_width) 
			}
			
			instance_create_depth(x + lengthdir_x(_dist, image_angle), y + lengthdir_y(_dist, image_angle), 
			depth - 2, oGunFlash)
			
			
		}
		create_bullet_case(weapon.spread_number)
		
		// Gun kick
		var kick_value = max(1, real_kick)
		
		oCamera.x += lengthdir_x(kick_value, image_angle-180)
		oCamera.y += lengthdir_y(kick_value, image_angle-180)
		
		x -= kick_value * choose(-1, 1);
		knockback_angle += kick_value * choose(-1, 1)
	}
}