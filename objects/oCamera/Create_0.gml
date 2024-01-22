/// @description Insert description here
// You can write your code in this editor

// Camera Stats
cam = view_camera[0]
min_camera_width = 320
min_camera_height = 160
cam_width = min_camera_width * 2
cam_height = min_camera_height * 2
half_width = cam_width * 0.5
half_height = cam_height * 0.5
camera_speed = 0.1

follow = noone

camera_set_view_size(cam, cam_width, cam_height)

// Camera Properties
cam_fov = 25


// Camera shake
shake_length = 0
shake_magnitude = 0
shake_remain = 0
buff = 32

debris_surface = surface_create(room_width, room_height)


weapon_range = 0