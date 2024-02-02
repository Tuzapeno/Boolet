/// @description 

// Inherit the parent event
event_inherited();



//draw_text(x, y, $"Work Points: {global.work_points}");
//draw_text(x, y+20, $"Firerate: {pa_cooldown}");

if state == player_state_free {
	draw_text(x, y+20, "State: Free");
}
if state == player_state_dashing {
	draw_text(x, y+20, "State: Dashing");
}

if global.coffe_time {
	draw_self_outline(c_yellow);	
}

if state == state_workaholic {
	draw_self_outline(c_blue);	
}