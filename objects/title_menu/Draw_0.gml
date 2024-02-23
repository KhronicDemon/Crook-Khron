draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//draw options
menu_font = font_add("Pixelary.otf", 5, true, false, 32, 107);
draw_set_font(menu_font);
draw_set_valign(fa_top);
draw_set_halign(fa_left);


for (var _options = 0; _options < op_length; _options++) {
	var _w = c_white;	
	if pos == _options {_w = c_yellow};
	draw_text_color(x+op_border, y+op_border + op_space * _options, option[_options], _w, _w, _w, _w, 1);
}
