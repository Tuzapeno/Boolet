/// @description Insert description here
// You can write your code in this editor

if ( current_hp <= 0 ) {
	instance_destroy()
}

var _dt = delta_time / 1000000

#region money getting
var _money_objs = ds_list_create()
var _nums = collision_circle_list(x, y, money_grab_radius, oMoney, false, false, _money_objs, true)

if ( _nums > 0 ) {
	for ( var i = 0; i < _nums; i++ ) {
		_money_objs[| i].pull = true
	}
}

ds_list_destroy(_money_objs)
#endregion

var left_key = keyboard_check(ord("A"))
var right_key = keyboard_check(ord("D"))
var up_key = keyboard_check(ord("W"))
var down_key = keyboard_check(ord("S"))

hsp = ((right_key - left_key) * spd + hforce) * _dt
vsp = ((down_key - up_key) * spd + vforce) * _dt

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

looking_direction = point_direction(x, y, mouse_x, mouse_y)
looking_quadrant = round(looking_direction / 90)
handle_mouse_look(looking_quadrant)

x += hsp 
y += vsp 

hforce = lerp(hforce, 0, 0.3)
vforce = lerp(vforce, 0, 0.3)

if ( immunity_frames > 0 ) immunity_frames--;
else { invincibility = false }

depth = -y