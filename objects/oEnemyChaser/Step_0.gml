/// @description Insert description here
// You can write your code in this editor

event_inherited();

player = oPlayerParent
player_in_range = collision_circle(x, y, detect_radius, player, false, false)

state();

#region Collision
// Horizontal Collision
if ( place_meeting(x + hsp, y, oSolid) ) {
  hsp = 0
}
// Vertical Collision
if ( place_meeting(x, y + vsp, oSolid) ) {
  vsp = 0
}
#endregion

// Animations

switch state {
	case chaser_state_idle:
		sprite_index = sChaserIdle;
		image_speed = 0.4;
		break;
	
	case chaser_state_following:
		sprite_index = sChaserRun;
		image_speed = 0.4;
		image_xscale = player.x < x ? -1 : 1;
		break;
}



