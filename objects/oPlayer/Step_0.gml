/// @description Insert description here
// You can write your code in this editor

event_inherited();

dt = delta_time / 1000000
left_key = keyboard_check(ord("A"))
right_key = keyboard_check(ord("D"))
up_key = keyboard_check(ord("W"))
down_key = keyboard_check(ord("S"))
roll_key = keyboard_check(vk_space)
interact_key = keyboard_check(ord("E"));

mouse_direction = point_direction(x, y, mouse_x, mouse_y);

if hsp != 0 || vsp != 0 { 
	player_direction = point_direction(0, 0, hsp, vsp);
}

depth = -y
image_xscale = mouse_x > x ? 1 : -1

#region material getting
var _material_objs = ds_list_create()
var _nums = collision_circle_list(x, y, material_grab_radius, oMaterial, false, false, _material_objs, true)

if ( _nums > 0 ) {
	for ( var i = 0; i < _nums; i++ ) {
		_material_objs[| i].pull = true
	}
}

ds_list_destroy(_material_objs)
#endregion



#region Animations

if hsp != 0 || vsp != 0 {
	sprite_index = sPlayerWalk;
}
else {
	sprite_index = sPlayerIdle;	
}

#endregion

#region Collision
// Horizontal Collision
if ( place_meeting(x + hsp, y, oSolid) ) {
  while( !place_meeting(x + sign(hsp), y, oSolid) ) {
    x += sign(hsp)
  }
  hsp = 0
}
// Vertical Collision
if ( place_meeting(x, y + vsp, oSolid) ) {
  while( !place_meeting(x, y + sign(vsp), oSolid) ) {
    y += sign(vsp)
  }
  vsp= 0
}
#endregion

x += hsp 
y += vsp 
