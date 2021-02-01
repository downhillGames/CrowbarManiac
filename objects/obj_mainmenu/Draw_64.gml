var i = 0;
draw_set_font(font_2);
draw_set_halign(fa_center);
draw_set_color(c_yellow);
//draw_text(0,0, string(global.numb_of_clues) + " of 4 clues found");
draw_text(683, 150, "Crowbar Maniac");

draw_set_font(font_1);
for (i = 0; i < array_length(button); i++){
	
	
	if (menu_index == i){
		draw_set_color(c_red);
	}
	else{
		draw_set_color(c_yellow);
	}
	draw_text(menu_x, menu_y+ (button_h * i), button[i]);

}