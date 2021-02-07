if (state == "chase_player"){
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
	
	
	alarm[0] = room_speed / global.ai_speed
}