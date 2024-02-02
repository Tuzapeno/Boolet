///@desc Casts a ray and returns the distance to the collision.
///@param direction
///@param object
///@param distance_limit
function raycast(_direction, _object, _distancelimit = -1){
	var pointx = x;
	var pointy = y;
	
	if _distancelimit == -1 {
		while !place_meeting(pointx, pointy, _object) {
			pointx += lengthdir_x(1, _direction);	
			pointy += lengthdir_y(1, _direction);	
		}	
	}
	else {
		while 
		point_distance(x, y, pointx, pointy) < _distancelimit &&
		!place_meeting(pointx, pointy, _object) {
			pointx += lengthdir_x(1, _direction);	
			pointy += lengthdir_y(1, _direction);	
		}	
	}
	
	
	pointx += lengthdir_x(-1, _direction);	
	pointy += lengthdir_y(-1, _direction);	
	
	return {
		_x : pointx,
		_y : pointy,
		_distance : point_distance(x, y, pointx, pointy)
	}
}