/// @description 

dir = point_direction(x, y, mouse_x, mouse_y);
collided_instances = ds_list_create();


image_index = 0;
image_angle = dir;

screen_shake(10, 5);
oAverageJoe.hsp += lengthdir_x(-2, dir);
oAverageJoe.vsp += lengthdir_y(-2, dir);

damage_array = [{
	damage: oAverageJoe.base_damage * 0.5 + (0.02 * global.work_points) * global.coffe_time,
	damage_color: c_white
}]

















