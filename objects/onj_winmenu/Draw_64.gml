var i = 0;
draw_set_font(font_2);
draw_set_halign(fa_center);
draw_set_color(c_yellow);

draw_text(683, 150, "You won!");

draw_set_font(font_1);
draw_text(683, 300, "You proved who the killer really was!");

	
for (i = 0; i < array_length(button); i++){
	
	
	if (menu_index == i){
		draw_set_color(c_red);
	}
	else{
		draw_set_color(c_yellow);
	}
	draw_text(menu_x, menu_y+ (button_h * i), button[i]);

}