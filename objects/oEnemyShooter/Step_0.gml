/// @description 

if walk_cooldown <= 0 {
	walk_cooldown = irandom_range(60, 80);
	
	direction = random(360);
	speed = 4;
	
	
} else walk_cooldown--;

#region Collision
// Horizontal Collision
if ( place_meeting(x + speed, y, oSolid) ) {
  speed = 0;
}
// Vertical Collision
if ( place_meeting(x, y + speed, oSolid) ) {
  speed = 0;
}
#endregion
