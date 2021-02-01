var i = 0;
draw_set_font(font_2);
draw_set_halign(fa_center);
draw_set_color(c_yellow);
//draw_text(0,0, string(global.numb_of_clues) + " of 4 clues found");
draw_text(683, 50, "Instructions");

draw_set_font(font_3);
draw_text(683, 200, "You've been framed for murder and the real killer is on the loose!");
draw_text(683, 225, "Find all the clues to prove who the real crowbar killer is.");
draw_text(683, 250, "Collect all the clues and take them to the police without being too suspicious");
draw_text(683, 275, "Police finding you breaking into houses will raise your suspicion level");
draw_text(683, 300, "Use the arrow key to walk and run in to clues to pick them up");
draw_text(683, 325, "Avoid the killer at all costs until you can find enough evidence to lock him up");
draw_text(683, 350, "He will strike again if he gets a chance!");

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