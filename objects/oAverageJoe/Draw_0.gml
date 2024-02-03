/// @description 

// Inherit the parent event
event_inherited();



draw_set_halign(fa_center);
draw_text(x, y+20, $"Work Points: {global.work_points}");
//draw_text(x, y+20, $"Firerate: {pa_cooldown}");

if global.coffe_time {
	draw_self_outline(c_yellow);	
}

if state == state_workaholic {
	draw_self_outline(c_blue);	
}

