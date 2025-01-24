movespeed = 3;
hitpoints_max = 100;
hitpoints_current = 100;

image_speed = 0;

note = instance_create_depth(x, y, -100, obj_note);

random_set_seed(randomize());

function take_damage(_damage) {
	hitpoints_current -= _damage;
	if (hitpoints_current <= 0) {
		room_goto(rm_main_menu);
	}
}
