/// @description Insert description here
// You can write your code in this editor
// Definição de variáveis para o inventário

event_inherited();

sprite_idle = noone;
sprite_running = noone;

base_atk_spd = 1;
atk_spd = base_atk_spd;

z_vsp = 0;
z_grav = 0.8;
z_max_vsp = 10;
z = camera_get_view_y(VIEW_CAMERA) - sprite_height;
state = player_state_arriving;
base_state = player_state_free;

// Keys

left_key = false;
right_key = false;
up_key = false;
down_key = false;
roll_key = false;

interact_key = false;

// Character variables
base_spd = 0;
spd = base_spd;

base_damage = 0;

mouse_direction = 0;
player_direction = 0;

money = 0;
energy = 0;
material_grab_radius = 50;

dash_curve_pos = 0;
dash_curve_spd = 0.05;


function primary_attack() {} 
function secondary_attack() {}
function ability_1() {}
function ability_2() {}
function ability_3() {}
