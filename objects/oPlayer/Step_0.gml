/// @description Insert description here
// You can write your code in this editor

if hp <= 0
	instance_destroy();

if hp > max_hp 
	hp = max_hp;

dt = delta_time / 1000000
var left_key = keyboard_check(ord("A"))
var right_key = keyboard_check(ord("D"))
var up_key = keyboard_check(ord("W"))
var down_key = keyboard_check(ord("S"))
var roll_key = keyboard_check(vk_space)

mouse_direction = point_direction(x, y, mouse_x, mouse_y);

if hsp != 0 || vsp != 0 { 
	player_direction = point_direction(0, 0, hsp, vsp);
}

depth = -y
image_xscale = mouse_x > x ? 1 : -1

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

if ((left_key || right_key || up_key || down_key) && state == PLAYER.IDLE)
	state = PLAYER.MOVING;


switch state {
	case PLAYER.IDLE:
		break;
	
	case PLAYER.MOVING:
		hsp = ((right_key - left_key) * spd) * dt
		vsp = ((down_key - up_key) * spd) * dt
		
		if hsp+vsp == 0
			state = PLAYER.IDLE;
			
		if roll_key {
			roll();
			state = PLAYER.ROLLING;
		}
		
		break;
		
	case PLAYER.HIT:
		break;
		
	case PLAYER.ROLLING:
		hsp = lengthdir_x(dash_spd, player_direction);
		vsp = lengthdir_y(dash_spd, player_direction);
	
		instance_create_depth(x, y, depth+1, oTrail, {
			sprite_index: sprite_index,
			image_xscale: image_xscale
		})
	
		if dash_time <= 0 {
			dash_time = immunity_frames;
			state = PLAYER.IDLE;
			hsp = 0;
			vsp = 0;
		} else dash_time--;
			
		break;
}

if ( immunity_frames > 0 ) immunity_frames--;
else { immunity = false }

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
