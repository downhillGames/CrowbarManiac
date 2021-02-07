draw_set_font(font_3)
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text(0,30, string(global.numb_of_clues) + " of 4 clues found");
draw_text(0,70, string(global.char_health) + "% health");
draw_text(600,0, " Suspect Meter");

draw_set_color(c_white);

draw_line(25, 5, 550, 5);
draw_line(25, 5, 25, 20);

draw_line(550, 5, 550, 20);
draw_line(25, 20, 550, 20);

for (i=1; i < global.player_sus; i++){
	draw_set_color(c_red);
	draw_line(i+25, 6, i+25, 19);
}

