var i = 0;
draw_set_font(font_2);
draw_set_halign(fa_center);
draw_set_color(c_yellow);

draw_text(683, 150, "Game Over");

draw_set_font(font_1);
if (global.death_cause == 1)
	draw_text(683, 300, "You were too suspicious");
else if (global.death_cause == 2)
	draw_text(683, 300, "The killer found you and you died");
	
for (i = 0; i < array_length(button); i++){
	
	
	if (menu_index == i){
		draw_set_color(c_red);
	}
	else{
		draw_set_color(c_yellow);
	}
	draw_text(menu_x, menu_y+ (button_h * i), button[i]);

}