/// @description 

if !owner then instance_destroy();
if owner.state == player_state_arriving then exit;

depth = mouse_y < y ? owner.depth + 1 : owner.depth - 1;

mouse_dir = point_direction(x, y, mouse_x, mouse_y);
shoot_key = mouse_check_button(mb_left);

x = owner.x + lengthdir_x(sprite_width, mouse_dir);
y = owner.y + lengthdir_y(sprite_width, mouse_dir);

image_yscale = mouse_x < x ? -1 : 1;

if shoot_key && cooldown <= 0 {
	shoot();	
	cooldown = cooldown_max;
	curve_pos = 0;
	curve_spd = 0.05;
}

if cooldown > 0 then cooldown--;

curve_pos += curve_spd;

var angle_channel = animcurve_get_channel(acRecoil, "angle");
var x_channel = animcurve_get_channel(acRecoil, "x");

var angle_value = animcurve_channel_evaluate(angle_channel, curve_pos);
var x_value = animcurve_channel_evaluate(x_channel, curve_pos);

_img_angle = mouse_dir - (angle_value*sign(image_yscale));
_x = x - lengthdir_x(x_value, _img_angle);
_y = y - lengthdir_y(x_value, _img_angle);

if curve_pos >= 1 {
	curve_pos = 0;
	curve_spd = 0;
}


















