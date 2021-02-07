global.numb_of_clues = 0;
global.char_health = 100;
global.death_cause = 1;
global.cop_view_distance = 150;
global.door_distance = 50;
global.player_sus = 0;
global.paused = false
global.ai_speed = 60
global.sus_level = 1

button_h = 75;
button[0] = "Continue"
button[1] = "Instructions"
button[2] = "Quit Game"

menu_index = 0;
last_selected = 0;

randX = irandom_range(21, 1477)
randY = irandom_range(33, 617)
while(!place_free(randX, randY)){
	randX = irandom_range(21, 1477)
	randY = irandom_range(33, 617)
}
instance_create_depth(randX,randY,0,obj_cloak)

audio_play_sound(game_music, 1, true);
alarm[0] = room_speed / 1.5