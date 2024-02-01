/// @description Insert description here
// You can write your code in this editor
// Definição de variáveis para o inventário

event_inherited();

z_vsp = 0;
z_grav = 0.8;
z_max_vsp = 10;
z = camera_get_view_y(VIEW_CAMERA) - sprite_height;

state = player_state_arriving;


with instance_create_depth(x, y, depth-1, oJoeColt) {
	owner = other.id;	
}

// Keys

left_key = false;
right_key = false;
up_key = false;
down_key = false;
roll_key = false;

interact_key = false;

// Character variables
image_speed = 0.3;

base_spd = 3;
spd = base_spd;

base_damage = 5;

mouse_direction = 0;
player_direction = 0;

money = 0;
energy = 20;
material_grab_radius = 50;

dash_spd = 0;
dash_time = immunity_frames;
dash_curve_pos = 0;
dash_curve_spd = 0.05;

pa_cooldown = 0;
sa_cooldown = 60 * 3;
a1_cooldown = 60 * 5;
a2_cooldown = 0;
a3_cooldown = 0;

cooldown = array_create(5, 0);

// Joe fires his pistol
function primary_attack() {} // Uses weapon;

// Throws a boomerang
function secondary_attack() {
	instance_create_depth(x, y, depth, oJoeBoomerang)	
}

// Heals for 20% of life
function ability_1() {
	hp += max_hp * 0.20;
}

function ability_2() {}
function ability_3() {}
