/// @description Insert description here
// You can write your code in this editor


player = instance_place(x, y, oPlayer)

if (place_meeting(x, y, oWeapon)) {
	var dir = random(360)
	hsp += lengthdir_x(5, dir) 
	vsp += lengthdir_y(5, dir) 
}


if ( player != noone && keyboard_check_pressed(ord("E")) ) {
	with ( oPlayer ) {
		switch_weapon(other.stats)
	}
	instance_destroy()
}


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

hsp = lerp(hsp, 0, 0.3)
vsp = lerp(vsp, 0, 0.3)
