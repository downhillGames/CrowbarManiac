if (global.paused){
	audio_stop_all()
	if menu_index == 0{
		global.paused = false
		instance_activate_all();
	}
	else if menu_index == 1{
		room_goto(InstructionsMenu)
	}
	else if menu_index == 2{
		game_end()
	}
}