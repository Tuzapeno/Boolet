/// @description 

if !owner then instance_destroy();

shoot_key = automatic ? mouse_check_button(mb_left) : mouse_check_button_pressed(mb_left);
mouse_dir = point_direction(x, y, mouse_x, mouse_y);
	
x = owner.x + lengthdir_x(sprite_width, mouse_dir);
y = owner.y + lengthdir_y(sprite_width, mouse_dir);

image_angle = mouse_dir;

image_yscale = x < owner.x ? -1 : 1;

if shoot_key && cooldown <= 0 {
	shoot();	
	cooldown = cooldown_max;
}

if cooldown > 0 then cooldown--;
