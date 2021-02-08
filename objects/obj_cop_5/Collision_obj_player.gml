if (can_hurt && state == "chase_player"){
	global.player_sus += 20
	state = "follow_path"
	alarm[1] = room_speed
	can_hurt = false
	audio_sound_pitch(hurt, random_range(0.8,1.2))
	obj_player.alarm[0] =  room_speed / 60
	audio_play_sound(hurt, 1, 0)
	var cop_path = path_add();
	randomize()
	var rand = irandom(2)
	while (last_rand == rand)
		rand = irandom(2)
	last_rand = rand
	if (rand == 0){
		mp_potential_path(cop_path , obj_cop5_goal1.x, obj_cop5_goal1.y, 2,path_size, false)
		path_start(cop_path, 2, path_action_stop, true);
	}
	else if (rand == 1){
		mp_potential_path(cop_path , obj_cop5_goal2.x, obj_cop5_goal2.y, 2,path_size, false)
		path_start(cop_path, 2, path_action_stop, true);
	}
	else if (rand == 2){
		mp_potential_path(cop_path , obj_cop5_goal3.x, obj_cop5_goal3.y, 2,path_size, false)
		path_start(cop_path, 2, path_action_stop, true);
	}

}

if (global.char_health <= 0){
	global.death_cause = 1
	room_goto(LoseMenu)
}
else if (global.numb_of_clues = 4 &&  state == "follow_path"){
	room_goto(WinMenu)
}
else if (global.numb_of_clues < 4 &&  state == "follow_path"){
	path_speed = 0
	alarm[2] = room_speed
}
