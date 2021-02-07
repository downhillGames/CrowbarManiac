var i = 0;
draw_set_font(font_2);
draw_set_halign(fa_center);
draw_set_color(c_yellow);
//draw_text(0,0, string(global.numb_of_clues) + " of 4 clues found");
draw_text(text_x, 50, "Instructions");

draw_set_font(font_4);
draw_text(text_x, 200, "You've been framed for murder and the real killer is on the loose!");
draw_text(text_x, 225, "You need to find enough evidence to prove who the real Crowbar Maniac is before the police arrest you!");
draw_text(text_x, 250, "Search the houses and rooms for any Clues that will prove your innocence.");
draw_text(text_x, 275, "Once you've found enough evidence, turn it in to the police to ensure your freedom.");
//draw_text(683, 300, " ");
draw_text(text_x, 325, "Use the arrow keys to run, to avoid the police and the killer, and to collide with Clues to pick them up!");
draw_text(text_x, 350, "You will have trackers at the top right of the screen to help you");
draw_text(text_x, 375, "keep track of how many Clues you have collected, your Health, and your Suspicion level.");
//draw_text(683, 400, " ");
//draw_text(683, 250, "Collect all the clues and take them to the police to prove who the real killer is.");
draw_text(text_x, 425, "Be careful of going into houses while the police are nearby, you may just catch their attention: " + "'!'" );
draw_text(text_x, 450, "If Police chasing after you manage to catch you, your Suspicion will raise even higher.");
draw_text(text_x, 475, "Keep an eye on your suspicion level.");
draw_text(text_x, 500, "If it gets too high, the police will be convinced you are the Crowbar Maniac and arrest you.");
draw_text(text_x, 525, "Avoid the killer at all costs, until you can find enough evidence to lock him up.");
draw_text(text_x, 550, "He will strike again if he gets a chance!");

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