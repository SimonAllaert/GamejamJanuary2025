movespeed = 6;
hitpoints_max = 100;
hitpoints_current = 100;
state = "PLAYING";

image_speed = 0;

note = instance_create_depth(x, y, -100, obj_note);

random_set_seed(randomize());

function take_damage(_damage) {
	hitpoints_current -= _damage;
	if (hitpoints_current <= 0) {
		room_goto(rm_main_menu);
	}
}

function level_up() {
	state = "LEVELING";
	note.state = "LEVELING";
	var _power1 = instance_create_depth(250, 360, -300, obj_button_levelup);
	_power1.sprite = power_up_all[0].sprite;
	_power1.name = power_up_all[0].name;
	_power1.description = power_up_all[0].description;
	var _power2 = instance_create_depth(600, 360, -300, obj_button_levelup);
	_power2.sprite = power_up_all[1].sprite;
	_power2.name = power_up_all[1].name;
	_power2.description = power_up_all[1].description;
	var _power3 = instance_create_depth(950, 360, -300, obj_button_levelup);
	_power3.sprite = power_up_all[2].sprite;
	_power3.name = power_up_all[2].name;
	_power3.description = power_up_all[2].description;
}

function activate_power() {
	state = "PLAYING";
	note.state = "PLAYING";
	instance_deactivate_object(note);
}

power_up = function(_sprite, _name, _description) constructor {
	sprite = _sprite;
	name = _name;
	description = _description;
}

power_up_all = [
	new power_up(spr_power_chord, "Power chords", "Increases damage and range\ndecreases note speed"),
	new power_up(spr_amp, "Amp", "Increases range"),
	new power_up(spr_reverb, "Reverb", "Increases range and\nnote speed"),
]
