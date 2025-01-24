movespeed = 10;
damage = 60;
damage_range = 16;
crit_chance = 0;
crit_modifier = 2;


function deal_damage() {
	var _output = damage;
	if (crit_chance > random(100)) {
		_output *= crit_modifier;
	}
	var _collision_list = ds_list_create();
	var _num = collision_circle_list(x, y, damage_range, obj_drummer, false, true, _collision_list, false);
	for (var _i = 0; _i < _num; _i++) {
		_collision_list[| _i].take_damage(_output);
	}
}