/// @description Insert description here
// You can write your code in this editor

if ( destroy ) {
	//vfx
	switch( last_collision ) {
		case WALL_COLLISION: 	
			create_dust(6)
			create_sparks(3)
			create_wall_debris(3)
			break
			
		case CHASER_COLLISION:
			create_sparks(3)
			break
	}
	
	instance_destroy();
}

x += lengthdir_x(spd, image_angle)
y += lengthdir_y(spd, image_angle)



