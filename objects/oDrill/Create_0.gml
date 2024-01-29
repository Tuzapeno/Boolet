/// @description 

enum DRILL {
	OFF,
	MINING,
	DONE
}


// Inherit the parent event
event_inherited();

drill_cost = 20;
contact_text = $"Start Drill? ({drill_cost} Energy)";


state = DRILL.OFF;

function interact() {
	if state != DRILL.OFF return;
	if oPlayer.energy < drill_cost return;
	
	oPlayer.energy -= drill_cost;
	state = DRILL.MINING;
}