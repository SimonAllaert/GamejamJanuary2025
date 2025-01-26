movespeed = 4;
hitpoints_max = 100;
hitpoints_current = 100;
range = 160;
damage = 15;
attack_speed = 30;
attack_cd = 0;
state = "MOVING";
target = instance_find(obj_guimtarguy, 0);
stick = noone;

image_speed = 0;

function take_damage(_damage) {
	hitpoints_current -= _damage;
	if (hitpoints_current <= 0) {
		instance_destroy(self);
	}
}