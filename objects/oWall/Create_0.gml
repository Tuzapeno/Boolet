/// @description Insert description here
// You can write your code in this editor

depth = -y

function destroy() {
	var _x = x / TILESIZE;
	var _y = y / TILESIZE;
	
	global.map_grid[# _x, _y] = EMPTY;	
	
	set_tile_around(_x, _y);	
	
	repeat(10) {
		with( instance_create_depth(x, y, depth-1, oParticle) ) {
			debris = true
			sprite_index = sWallDebris
			image_angle = random(360)
			fric = 0.8
				
			motion_add(image_angle, random_range(4, 9))
		}
	}
	
	instance_destroy();	
}


