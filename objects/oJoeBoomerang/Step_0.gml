
if ricochets <= 0 {
	instance_destroy();
}

if target == noone {
	var test = ds_list_create();
	collision_circle_list(x, y, ricochet_radius, oEnemyParent_class, false, false, test, true);

	for (var i = 0; i < ds_list_size(test); ++i) {
	    if ds_list_find_index(hitted_targets, test[|i].id) == -1 {
			ricochet_radius = 200;
			target = test[|i].id;
			ds_list_add(hitted_targets, test[|i].id);
			break;
		}
	}
	
	ds_list_destroy(test);
}
else {
	move_towards_point(target.x, target.y, speed);
	if place_meeting(x, y, target) {
		apply_damage(target, damage_array);
		target = noone;
		ricochets--;
	}
}

image_angle += 35;

with instance_create_depth(x,y,depth, oTrail) {
	sprite_index = other.sprite_index;
	image_angle = other.image_angle;
	owner = other.id;
}


