last_direction = xDir

if (last_direction == 1){
	sprite_index =	spr_player_right_hurt;
	show_debug_message("RIGHT");
}
else{
	sprite_index = spr_player_left_hurt;
	show_debug_message("LEFT");
}

alarm[1] =  room_speed / 15