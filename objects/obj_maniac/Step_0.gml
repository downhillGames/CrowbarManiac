

if (state == "chase_player"){
	xPrev = x - xprevious

	if (xPrev > 0)
		xDir = 1
	else if (xPrev < 0)
		xDir = -1
		
	if (xDir != last_direction && xDir!= 0)
		last_direction = xDir

	if last_direction == 1
		sprite_index =	spr_maniac_right;
	else
		sprite_index = spr_maniac_left;

}
if (state == "follow_path"){


	if (direction >= 306 || direction <= 45)
		xDir = 1
	else if (direction > 136 && direction <= 225)
		xDir = -1
	else
		xDir = last_direction
		
	if (xDir != last_direction && xDir!= 0)
		last_direction = xDir

	if last_direction == 1
		sprite_index =	spr_maniac_right;
	else
		sprite_index = spr_maniac_left;

}



if (distance_to_object(obj_player) < 150){
	if (state == "follow_path"){
			path_end();
			alarm[0] = room_speed / 45
			state = "chase_player"
		}
	}
else {
	if (state == "chase_player"){
		state = "follow_path"
		randomize()
		var rand = irandom(3)

		if (rand == 0){
			path_start(Mainianpath1, 2, path_action_reverse, true);
		}
		else if (rand == 1){
			path_start(Mainianpath2, 2, path_action_reverse, true);
		}
		else if (rand == 2){
			path_start(ManiacPath3, 2, path_action_reverse, true);
		}

		else if (rand == 3){
			path_start(ManiacPath4, 2, path_action_reverse, true);
		}
	}
}
