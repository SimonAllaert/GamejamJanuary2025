movespeed = 10;
damage = 15;
target = instance_find(obj_guimtarguy, 0);
move_towards_point(target.x, target.y, movespeed);
rotate_count = 0;