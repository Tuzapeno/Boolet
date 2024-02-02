
ricochets = 3;

initial_ricochet_radius = 50;
ricochet_radius = initial_ricochet_radius;

speed = 8;
direction = point_direction(x, y, mouse_x, mouse_y);

target = noone;

hitted_targets = ds_list_create();

damage_array = [{
	damage: oPlayerParent.base_damage * 0.5,
	damage_color: c_white
}]