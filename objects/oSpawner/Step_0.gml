/// @description 

if !setup && global.game_started {
	for (var _x = 0; _x < global.map_width_t; ++_x) {
	    for (var _y = 0; _y < global.map_height_t; ++_y) {
		    if global.map_grid[# _x, _y] == EMPTY {
				ds_list_add(empty_tiles, [_x, _y]);
			}
		}
	}
	setup = true;
}

if setup {
	//if spawn_cooldown <= 0 && global.enemy_count < max_enemies {
	//	spawn_cooldown = spawn_time;
	//	var random_position = empty_tiles[| irandom(ds_list_size(empty_tiles)-1)];
	//	var _x = random_position[0] * TILESIZE;
	//	var _y = random_position[1] * TILESIZE;
		
	//	instance_create_layer(_x, _y, "Instances", oEnemyMark);
	//	global.enemy_count++;
	
	//} else spawn_cooldown--;
}


















