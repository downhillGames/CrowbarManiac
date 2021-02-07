if (can_hurt){
	global.char_health -= 20
	alarm[1] = room_speed
	can_hurt = false
	obj_player.alarm[0] =  room_speed / 60
	audio_sound_pitch(hurt, random_range(0.8,1.2))
	audio_play_sound(hurt, 1, 0)	
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
	
	if (global.char_health <= 0){
		global.death_cause = 2	
		room_goto(LoseMenu)
	}
	
}