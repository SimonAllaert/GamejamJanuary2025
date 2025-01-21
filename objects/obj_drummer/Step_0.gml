switch state {
	case "MOVING":
		image_index = 0;
		if (distance_to_object(target) <= range) {
			state = "ATTACKING";
			speed = 0;
		}
		else {
			move_towards_point(target.x, target.y, movespeed);
		}
		break;
	case "ATTACKING":
		image_index = 1;
		if (stick == noone) {
			stick = instance_create_depth(x, y, -10, obj_drummer_stick);
		}
		attack_cd++;
		if (attack_cd > attack_speed) {
			stick = noone;
			attack_cd = 0;
			state = "MOVING";
		}
		break;
	default:
		break
	}
