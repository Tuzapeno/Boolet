/// @description Insert description here
// You can write your code in this editor

enum TRANSITION {
	OUT,
	IN
}

state = TRANSITION.IN

spr = sTransitionSprite
sprw = sprite_get_width(spr)
sprh = sprite_get_height(spr)

xmax = room_width / sprw
ymax = room_height / sprh
imax = sprite_get_number(spr)

sub_image_index_inc = sprite_get_speed(spr)/game_get_speed(gamespeed_fps)
sub_image_index = 0

//transition color
col = c_black

target_room = noone


