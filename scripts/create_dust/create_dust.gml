// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_dust(_amount){
	// Dust
	repeat(_amount) {
		with( instance_create_depth(x, y, depth-1, oParticle) ) {
			debris = false
			sprite_index = sWallDust
			image_angle = random(360)
			fric = 0.8
				
			motion_add(other.image_angle+random_range(-70, 70), random_range(-4, -9))
		}
	}
}