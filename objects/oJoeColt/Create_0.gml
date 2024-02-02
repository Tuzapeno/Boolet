/// @description 

event_inherited();

cooldown_max = 30;

spawn_flash = false;
_x = x;
_img_angle = image_angle;

curve_pos = 0;
curve_spd = 0;

function shoot() {
	var bulletx = x + lengthdir_x(sprite_width-sprite_xoffset, mouse_dir);
	var bullety = y + lengthdir_y(sprite_width-sprite_xoffset, mouse_dir);
	
	spawn_flash = true;
	
	with instance_create_layer(bulletx, bullety, "Instances", oBullet) {
		sprite_index = sYellowBullet;
		image_angle = other.mouse_dir;
		direction = other.mouse_dir;
		spd = 20;
		image_xscale = max(1, spd/sprite_width);	
	}
	
	create_bullet_case(sYellowBulletCase, 1);
}





















