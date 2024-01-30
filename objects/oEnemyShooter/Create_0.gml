/// @description 

event_inherited()

enum SHOOTER {
	IDLE,
	MOVING
}

hp = 10;

state = SHOOTER.IDLE;
walk_cooldown = 30;
spd = 3;
hsp = 0;
vsp = 0;

move_direction = 0;
target_x = 0;
target_y = 0;


function calculate_movement() {
	// Calculate lines around player for solids
	var _collisions = []
	for (var i = 0; i < 8; ++i) {
	    array_push(_collisions, raycast(45*i, oSolid, random_range(10, 100)));
	}

	var path = _collisions[irandom(array_length(_collisions)-1)]

	move_direction = path._distance;
	target_x = path._x;
	target_y = path._y;
	spd = random_range(1, 3);
}
