var i = 0;
draw_set_font(font_2);
draw_set_halign(fa_center);
draw_set_color(c_yellow);
//draw_text(0,0, string(global.numb_of_clues) + " of 4 clues found");
draw_text(683, 150, "Crowbar Maniac");

draw_set_font(font_3);
draw_text(683, 350, "Use arrow keys to highlight option, and 'Enter' to select.");
draw_text(683, 400, "Press 'P' to pause during gameplay");
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

draw_set_color(c_yellow);
draw_set_font(font_4);
draw_text(275, 700, "Crowbar Maniac");
draw_text(1075, 700, "Non-Alert Cop");
draw_text(1200, 700, "Alert Cop");
