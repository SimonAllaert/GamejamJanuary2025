rotate_count++;
if (rotate_count > 450) {
	rotate_count = 0;
	if (image_index == 3) {
		image_index = 0;
	}
	else {
		image_index++;
	}
}