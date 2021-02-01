if (can_hurt && state == "chase_player"){
	global.char_health -= 20
	alarm[1] = room_speed
	can_hurt = false
	audio_sound_pitch(hurt, random_range(0.8,1.2))
	obj_player.alarm[0] =  room_speed / 60
	audio_play_sound(hurt, 1, 0)
	path_start(cop_path_1, 2, path_action_reverse, true)
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
