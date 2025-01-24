var _left = (keyboard_check(vk_left) or keyboard_check(ord("A")));
var _right = (keyboard_check(vk_right) or keyboard_check(ord("D")));
var _up = (keyboard_check(vk_up) or keyboard_check(ord("W")));
var _down = (keyboard_check(vk_down) or keyboard_check(ord("S")));
var _hspd = _right - _left;
var _vspd = _down - _up;

if (_hspd != 0 || _vspd != 0) {
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(movespeed, _dir);
    var _yadd = lengthdir_y(movespeed, _dir);
	x = x + _xadd;
	y = y + _yadd;
	if (_xadd > 0) {
		image_index = 0;
	}
	else if (_xadd < 0) {
		image_index = 1;
	}
}

x = clamp(x, 0 + sprite_width/2, room_width - sprite_width/2);
y = clamp(y, 0 + sprite_height/2 + 5, room_height - sprite_height/2 - 5);