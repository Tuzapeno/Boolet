// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_bullet_case(_amount) {
	var _spr = weapon.ammo[bullet_index].bullet_case
	
	repeat(_amount) {
		with( instance_create_depth(x, y, depth+1, oParticle) ) {
			debris = true
			sprite_index = _spr
			fric = 0.7
			image_angle = random(360)
			motion_add(other.image_angle+random_range(-45, 45), random_range(-6, -12))
		}
	}
}