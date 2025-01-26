if (point_distance(x, y, mouse_x, mouse_y) <= movespeed) {
	x = mouse_x;
	y = mouse_y;
	speed = 0;
}
else {
	move_towards_point(mouse_x, mouse_y, movespeed);
	image_angle = point_direction(x,y, mouse_x, mouse_y) + 100;
}

if (image_index == 6) {
	self.deal_damage();
}