///@desc variables

mouse_angle = 0
knockback_angle = 0

weapon_hold_y_offset = 10
weapon_hold_x_offset = 10

player = oPlayer
ox = player.x + weapon_hold_x_offset
oy = player.y + weapon_hold_y_offset

weapon = global.weapons.guns.ak47

facing_up = false

canshoot = 0; // Shooting timer
bullet_index = 0; // Current bullet

// Modifiers
real_innaccuracy = 0
real_kick = 0

real_damage = weapon.damage

// Create weapon attachment parts

var _sight = instance_create_depth(x, y, depth+1, oSight)
var _stock = instance_create_depth(x, y, depth+1, oStock)
var _foregrip = instance_create_depth(x, y, depth+1, oForegrip)
var _laser = instance_create_depth(x, y, depth+1, oLaser)

instance_create_depth(x, y, depth, oGunBody, {
	sight: _sight,
	stock: _stock,
	foregrip: _foregrip,
	laser: _laser
})

sight = _sight
stock = _stock
foregrip = _foregrip
laser = _laser




