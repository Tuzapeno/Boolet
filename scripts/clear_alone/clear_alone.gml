// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clear_alone(_x, _y){
	if (global.map_grid[# _x, _y] != WALL) {return;}
	if (global.map_grid[# _x-1, _y] == WALL) {return;}
	if (global.map_grid[# _x+1, _y] == WALL) {return;}
	if (global.map_grid[# _x, _y-1] == WALL) {return;}
	if (global.map_grid[# _x, _y+1] == WALL) {return;}
	if (global.map_grid[# _x+1, _y+1] == WALL) {return;}
	if (global.map_grid[# _x-1, _y-1] == WALL) {return;}
	if (global.map_grid[# _x+1, _y-1] == WALL) {return;}
	if (global.map_grid[# _x-1, _y+1] == WALL) {return;}
	
	global.map_grid[# _x, _y] = EMPTY
}