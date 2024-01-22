// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_sparks(_amount){
	// Sparks
	repeat(_amount) {
		with( instance_create_depth(x, y, depth-1, oParticle) ) {
			debris = false
			sprite_index = sBulletSpark
			fric = 0.9
			motion_add(other.image_angle+random_range(-90, 90), random_range(-4, -9))
			image_angle = direction
		}	
	}
}