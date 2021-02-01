if (state == "chase_player"){
	xPrev = x - xprevious

	if (xPrev > 0)
		xDir = 1
	else if (xPrev < 0)
		xDir = -1
		
	if (xDir != last_direction && xDir!= 0)
		last_direction = xDir

	if last_direction == 1
		sprite_index =	spr_cop_alert_right;
	else
		sprite_index = spr_cop_alert_left;

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
		sprite_index =	spr_cop_right;
	else
		sprite_index = spr_cop_left;

}

if (point_distance(x, y, obj_player.x, obj_player.y) < global.cop_view_distance){
	//if collision_line(x,y,obj_player,obj_player.y,obj_wall,1,0){
			if (state == "follow_path"){
				if (point_distance(door_1.x, door_1.y, obj_player.x, obj_player.y) < 50 || point_distance(door_2.x, door_2.y, obj_player.x, obj_player.y) < 50 ||
					point_distance(door_3.x, door_3.y, obj_player.x, obj_player.y) <  50 || point_distance(door_4.x, door_4.y, obj_player.x, obj_player.y) < 50 ){
					path_end()
					state = "chase_player"
					sprite_index =	spr_cop_alert_right;
					alarm[0] = room_speed / 45
				}
			}
	//}
}
else {
	if (state == "chase_player"){
		state = "follow_path"
		sprite_index =	spr_cop_right;
		path_start(cop_path_2, 2, path_action_reverse, true);
	}
}

