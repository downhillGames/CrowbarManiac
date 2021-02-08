var i = 0;
draw_set_font(font_1);
draw_set_halign(fa_center);
draw_set_color(c_yellow);
//draw_text(0,0, string(global.numb_of_clues) + " of 4 clues found");
draw_text(text_x, 10, "Instructions");

draw_set_font(font_4);
draw_text(text_x, 100, "You've been framed for murder and the real killer is on the loose!");
draw_text(text_x, 125, "You need to find enough evidence to prove who the real Crowbar Maniac is before the police arrest you!");
draw_text(text_x, 150, "Search the houses and rooms for any Clues that will prove your innocence.");
draw_text(text_x, 175, "Once you've found enough evidence, turn it in to the police to ensure your freedom.");
draw_text(text_x, 200, "The killer left behind some false evidence that will only make you look more guily, avoid collecting them");
//draw_text(683, 300, " ");
draw_text(text_x, 250, "Use the arrow keys to run, to avoid the police and the killer, and to collide with Clues to pick them up!");
draw_text(text_x, 275, "You will have trackers at the top left of the screen to help you");
draw_text(text_x, 300, "keep track of how many Clues you have collected, your Health, and your Suspicion level.");
//draw_text(683, 400, " ");
//draw_text(683, 250, "Collect all the clues and take them to the police to prove who the real killer is.");
draw_text(text_x, 350, "Be careful of going into houses while the police are nearby, you may just catch their attention: " + "'!'" );
draw_text(text_x, 375, "If Police chasing after you manage to catch you, your Suspicion will raise even higher.");
draw_text(text_x, 400, "If the cops lose you out of their site they will give up thier search");
draw_text(text_x, 425, "Keep an eye on your suspicion level, it raises over time");
draw_text(text_x, 450, "If it gets too high, the police will be convinced you are the Crowbar Maniac and arrest you.");

draw_text(text_x, 500, "Find the killer's cloak to make cop's view distance smaller, but it will make your suspicion bar raise faster");

draw_text(text_x, 550, "Avoid the killer at all costs, until you can find enough evidence to lock him up.");
draw_text(text_x, 575, "He will strike again if he gets a chance!");


draw_text(275, 700, "Crowbar Maniac");
draw_text(1075, 700, "Non-Alert Cop");
draw_text(1200, 700, "Alert Cop");


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