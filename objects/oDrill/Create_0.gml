/// @description 

depth = -y;

// Inherit the parent event
event_inherited();

drill_cost = 20;
contact_text = $"Start Drill? ({drill_cost} Energy)";
drill_time = 60 * 5;

z = 0;
z_vsp = 0;
z_grav = 0.5;
z_max_vsp = 10;

state = drill_state_standby;

function interact() {};