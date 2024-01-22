// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_wall_debris(_amount){
	// Wall debris
	repeat(_amount) {
		with( instance_create_depth(x, y, depth-1, oParticle) ) {
			debris = true
			sprite_index = sWallDebris
			image_index = irandom(image_number-1)
			image_speed = 0
			fric = 0.8
			motion_add(other.image_angle+random_range(-40, 40), random_range(-1, -6))
		}	
	}
}