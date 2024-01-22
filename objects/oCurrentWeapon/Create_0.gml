///@desc variables

mouse_angle = 0
knockback_angle = 0

weapon_hold_y_offset = 10
weapon_hold_x_offset = 10

ox = oPlayer.x + weapon_hold_x_offset
oy = oPlayer.y + weapon_hold_y_offset

weapon = global.weapons.guns.ak47

facing_up = false

canshoot = 0; // Shooting timer
bullet_index = 0; // Current bullet

// Modifiers
real_innaccuracy = 0
real_kick = 0

real_damage = weapon.damage

// Create weapon attachment parts
instance_create_depth(x, y, depth, oGunBody)
instance_create_depth(x, y, depth+1, oSight)
instance_create_depth(x, y, depth+1, oStock)
instance_create_depth(x, y, depth+1, oForegrip)
instance_create_depth(x, y, depth+1, oLaser)

sight = oSight
stock = oStock
foregrip = oForegrip
laser = oLaser




