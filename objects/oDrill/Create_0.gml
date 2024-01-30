/// @description 

enum DRILL {
	OFF,
	MINING,
	DONE
}

depth = -y;

// Inherit the parent event
event_inherited();

drill_cost = 20;
contact_text = $"Start Drill? ({drill_cost} Energy)";
drill_time = 60 * 5;


state = DRILL.OFF;

function interact() {
	if state != DRILL.OFF return;
	if oPlayer.energy < drill_cost return;
	
	oPlayer.energy -= drill_cost;
	state = DRILL.MINING
	
	var x1 = (x / TILESIZE) - 4;
	var y1 = (y / TILESIZE) - 4;
	var x2 = (x / TILESIZE) + 4;
	var y2 = (y / TILESIZE) + 4;
	ds_grid_set_region(global.map_grid, x1, y1, x2, y2, EMPTY);
	draw_map();
	screen_shake(15, 10);
	
	
	
}