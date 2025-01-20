if (point_distance(x, y, mouse_x, mouse_y) < movespeed) {
	x = mouse_x;
	y = mouse_y;
}
else {
	move_towards_point(mouse_x, mouse_y, movespeed);
}
