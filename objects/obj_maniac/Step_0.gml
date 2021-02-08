
if (state == "chase_player"){
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


if (point_distance(x, y, obj_player.x, obj_player.y) < 10 && state == "chase_player"){
	path_end()
	if obj_player.x > x{
		xTarget = x+1
	}
	else if obj_player.x < x{
		xTarget = x-1
	}
	if obj_player.y > y{
		yTarget = y+1
	}
	else if obj_player.y < y{
		yTarget = y-1
	}
	
	if !(place_meeting(xTarget, y, obj_wall)){
		x=xTarget
		}
	if !(place_meeting(x, yTarget, obj_wall)){
		y=yTarget
	}
}
else if (distance_to_object(obj_player) < 100){
	if (state == "follow_path"){
			path_end();
			alarm[0] = room_speed / global.ai_speed
			state = "chase_player"
		}
	}
else {
	if (state == "chase_player"){
		state = "follow_path"
		path_end();
		randomize()
		var rand = irandom(3)
		while (last_rand == rand)
			rand = irandom(2)
		last_rand = rand
		var maniac_path = path_add();
		if (rand == 0){
			mp_potential_path(maniac_path, obj_goal1.x, obj_goal1.y, 2,path_size, false)
			path_start(maniac_path, 2, path_action_stop, true);
		}
		else if (rand == 1){
			mp_potential_path(maniac_path, obj_goal2.x, obj_goal2.y, 2,path_size, false)
			path_start(maniac_path, 2, path_action_stop, true);
		}
		else if (rand == 2){
			mp_potential_path(maniac_path, obj_goal3.x, obj_goal3.y, 2,path_size, false)
			path_start(maniac_path, 2, path_action_stop, true);
		}

		else if (rand == 3){
			mp_potential_path(maniac_path, obj_goal4.x, obj_goal4.y, 2,path_size, false)
			path_start(maniac_path, 2, path_action_stop, true);
		}


	}
}
