// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_3x3_room(_x, _y){
	var total = sum(global.map_grid[# _x, _y], 
					global.map_grid[# _x+1, _y],
					global.map_grid[# _x-1, _y],
					global.map_grid[# _x, _y+1],
					global.map_grid[# _x, _y-1],
					global.map_grid[# _x+1, _y+1],
					global.map_grid[# _x-1, _y-1],
					global.map_grid[# _x-1, _y+1],
					global.map_grid[# _x+1, _y-1])
	
	global.map_grid[# _x, _y] = EMPTY
	global.map_grid[# _x+1, _y] = EMPTY
	global.map_grid[# _x-1, _y] = EMPTY
	global.map_grid[# _x, _y+1] = EMPTY
	global.map_grid[# _x, _y-1] = EMPTY
	global.map_grid[# _x+1, _y+1] = EMPTY
	global.map_grid[# _x-1, _y-1] = EMPTY
	global.map_grid[# _x-1, _y+1] = EMPTY
	global.map_grid[# _x+1, _y-1] = EMPTY

	return total
}