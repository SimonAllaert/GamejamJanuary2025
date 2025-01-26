event_inherited();
guimtarguy = noone;
note = noone;

sprite = noone;
name = noone;
description = noone;

function activate_power() {
	switch(name) {
	case "Power chords":
		activate_power_chords();
		break;
	case "Amp":
		activate_amp();
		break;
	case "Reverb":
		activate_reverb();
		break;
	default: 
		break;
	}
	guimtarguy.complete_level_up();
}

function activate_power_chords() {
	note.damage *= 1.2;
	note.damage_range *= 1.7;
	note.movespeed *= 0.75;
}

function activate_amp() {
	note.damage_range *= 2.3;
}

function activate_reverb() {
	note.damage_range *= 1.7;
	note.movespeed *= 1.3;
}