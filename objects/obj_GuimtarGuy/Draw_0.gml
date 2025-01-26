draw_self();

draw_set_font(font_health);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height-16, string_format(hitpoints_current, 3, 0) + "   " + string_format(hitpoints_max, 3, 0));
draw_line_width(room_width/2-2, room_height-8, room_width/2+2, room_height-24, 3);

if (state == "LEVELING") {
	draw_set_alpha(0.5);
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}