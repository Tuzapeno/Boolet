/// @description Insert description here
// You can write your code in this editor

speed *= fric

switch( debris ) {
	case false:
		if (image_index >= image_number-1) {
			instance_destroy()	
		}
		break
		
	case true:
		if (speed <= 0) {
			surface_set_target(oCamera.debris_surface)
			//draw_self()
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 0.7);
			surface_reset_target()
			instance_destroy()	
		}
		break
}




