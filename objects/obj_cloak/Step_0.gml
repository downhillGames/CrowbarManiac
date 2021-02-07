if collision_line(x, y, obj_player.x, obj_player.y, obj_wall, 1, 0){
	visible = false
	play_clue = true
}
else{
	
	if (play_clue && (point_distance(x, y, obj_player.x, obj_player.y) < 250)) {
		visible = true
		audio_play_sound(clue, 1, 0);
		play_clue = false
	}

}
