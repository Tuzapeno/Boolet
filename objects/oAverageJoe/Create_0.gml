/// @description Insert description here
// You can write your code in this editor
// Definição de variáveis para o inventário

event_inherited();

with instance_create_depth(x, y, depth-1, oJoeColt) {
	owner = other.id;	
}

// Character variables
	// Sprites
	sprite_idle = sJoeIdle;
	sprite_running = sJoeRun;
	sprite_rolling = sJoeRolling;

	// Stats
	base_atk_spd = 0.5;
	base_damage = 5;
	base_spd = 2;
	base_wp_time = FRAME_RATE * 2; // Time to produce 1 work point

	atk_spd = base_atk_spd;
	spd = base_spd;
	global.work_points = 0;
	max_work_points = 50;
	wp_time = base_wp_time; 
	global.coffe_time = 0;

cooldown = [
{cvalue: 0, cmax: 0, sprite: sSkillPlaceholder},
{cvalue: 0, cmax: 0, sprite: sJoeSS},
{cvalue: 0, cmax: 0, sprite: sJoeAB1},
{cvalue: 0, cmax: 0, sprite: sJoeAB2},
{cvalue: 0, cmax: 0, sprite: sSkillPlaceholder}
];

cooldown[SKILL.PRIMARY].cmax = FRAME_RATE * atk_spd;
cooldown[SKILL.SECONDARY].cmax = FRAME_RATE * 5;
cooldown[SKILL.ABILITY1].cmax = FRAME_RATE * 10;
cooldown[SKILL.ABILITY2].cmax = 0;
cooldown[SKILL.ABILITY3].cmax = FRAME_RATE;
cooldown_step = 1;

skills_surface = noone;

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
	cooldown_step = 3;
	alarm[1] = FRAME_RATE * 5;
}


// Early Break
function ability_3() {
	for (var i = 0; i < array_length(cooldown) - 1; ++i) {
	    cooldown[i].cvalue = 0;
	}
	global.work_points += 30;
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
