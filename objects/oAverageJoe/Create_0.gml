/// @description Insert description here
// You can write your code in this editor
// Definição de variáveis para o inventário

event_inherited();

sprite_idle = sJoeIdle;
sprite_running = sJoeRun;
sprite_rolling = sJoeRolling;

with instance_create_depth(x, y, depth-1, oJoeColt) {
	owner = other.id;	
}

// Character variables

base_atk_spd = 0.5;
atk_spd = base_atk_spd;

base_spd = 2;
spd = base_spd;
base_damage = 5;

global.work_points = 0;
max_work_points = 50;
base_wp_time = FRAME_RATE * 2; // Time to produce 1 work point
wp_time = base_wp_time; 

pa_cooldown = FRAME_RATE * atk_spd;
sa_cooldown = FRAME_RATE * 5;
a1_cooldown = FRAME_RATE * 10;
a2_cooldown = 0;
a3_cooldown = FRAME_RATE * 1;

global.coffe_time = 0;

cooldown = array_create(5, 0);

// Pistol fire d(100%) 
function primary_attack() {} // Uses weapon;

// Bag knock d(50%) (stun)
function secondary_attack() {
	instance_create_depth(x, y, depth, oJoeSuitcase)
}

// Coffe Break
function ability_1() {
	global.coffe_time = 1;
	var bonus = (0.1 + (0.05 * (global.work_points/5)))
	spd = base_spd + (base_spd * bonus);
	pa_cooldown = FRAME_RATE * max(0 ,base_atk_spd - (base_atk_spd * bonus));
	alarm[1] = FRAME_RATE * 5;
}

// Workaholic
function state_workaholic() {
	wp_time = base_wp_time / 4;
	hsp = 0;
	vsp = 0;
	
	if keyboard_check_pressed(vk_anykey) {
		state = base_state;
		wp_time = base_wp_time;
	}
}

// Early Break
function ability_3() {
	for (var i = 0; i < array_length(cooldown); ++i) {
	    cooldown[i] = 0;
	}
	global.work_points += 30;
}


