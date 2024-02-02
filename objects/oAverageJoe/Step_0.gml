/// @description 

state();

left_key = keyboard_check(ord("A"));
right_key = keyboard_check(ord("D"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
roll_key = keyboard_check(vk_space);
interact_key = keyboard_check(ord("E"));

mouse_direction = point_direction(x, y, mouse_x, mouse_y);

ability_1_key = keyboard_check_pressed(ord("Q"));
ability_2_key = keyboard_check(ord("F"));
ability_3_key = keyboard_check_pressed(ord("R"));


for (var i = 0; i < array_length(cooldown) - 1; ++i) {
    if cooldown[i] > 0 then cooldown[i]--;
}

if mouse_check_button(mb_left) && cooldown[PLAYER.P_ATTACK] <= 0 {
	primary_attack();
	cooldown[PLAYER.P_ATTACK] = pa_cooldown;
}

if mouse_check_button(mb_right) && cooldown[PLAYER.S_ATTACK] <= 0 {
	secondary_attack();
	cooldown[PLAYER.S_ATTACK] = sa_cooldown;
}

if ability_1_key && cooldown[PLAYER.ABILITY_1] <= 0 {
	ability_1();
	cooldown[PLAYER.ABILITY_1] = a1_cooldown;
}

if ability_2_key && !global.coffe_time {
	state = state_workaholic;
}

if ability_3_key {
	ability_3();
	cooldown[PLAYER.ABILITY_3] = a3_cooldown;
}
	

// Generate work points
if !alarm[0] then alarm[0] = wp_time

if global.work_points > max_work_points {
	global.work_points = max_work_points;	
}

if hsp != 0 || vsp != 0 { 
	player_direction = point_direction(0, 0, hsp, vsp);
}

depth = -y;
image_xscale = mouse_x > x ? 1 : -1;

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

x += hsp;
y += vsp;

show_debug_message($"Sprite: {sprite_get_name(sprite_index)}");


