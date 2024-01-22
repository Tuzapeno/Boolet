/// @description Insert description here
// You can write your code in this editor

flash_alpha = lerp(flash_alpha, 0, 0.1)
var _dt = delta_time / 1000000
following_player = collision_circle(x, y, detect_radius, oPlayer, false, false)

if ( hp <= 0 ) {
	instance_destroy()	
}

switch ( state ) {
	case ENEMY_STATES.IDLE:
		spd = 0
		if following_player then state = ENEMY_STATES.FOLLOWING	
		
		break
		
	case ENEMY_STATES.FOLLOWING:
		spd = spd_max
		
		if (instance_exists(oPlayer)) {
			mp_potential_step_object(oPlayer.x, oPlayer.y, spd * _dt, oWall)
		}
		if !following_player then state = ENEMY_STATES.IDLE
		break
		
	case ENEMY_STATES.HITTED:
		x += lengthdir_x(hsp, knockback_dir)
		y += lengthdir_y(vsp, knockback_dir)
		spd = 0
		if floor(hforce) == 0 && floor(vforce) == 0 then state = ENEMY_STATES.IDLE
		break
}


#region Collision
// Horizontal Collision
if ( place_meeting(x + hsp, y, oSolid) ) {
  while( !place_meeting(x + sign(hsp), y, oSolid) ) {
    x += sign(hsp)
  }
  hsp = 0
}
// Vertical Collision
if ( place_meeting(x, y + vsp, oSolid) ) {
  while( !place_meeting(x, y + sign(vsp), oSolid) ) {
    y += sign(vsp)
  }
  vsp= 0
}
#endregion

hsp = (spd + hforce) * _dt
vsp = (spd + vforce) * _dt

hforce = lerp(hforce, 0, 0.5)
vforce = lerp(vforce, 0, 0.5)


