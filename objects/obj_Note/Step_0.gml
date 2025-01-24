if (point_distance(x, y, mouse_x, mouse_y) <= movespeed) {
	x = mouse_x;
	y = mouse_y;
	speed = 0;
}
else {
	move_towards_point(mouse_x, mouse_y, movespeed);
	image_angle = point_direction(x,y, mouse_x, mouse_y) + 90;
}


damage_counter++
if (damage_counter > 60) {
	self.deal_damage();
	damage_counter = 0;
}