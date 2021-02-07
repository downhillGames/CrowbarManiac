global.numb_of_clues = 0;
global.char_health = 100;
global.death_cause = 1;
global.cop_view_distance = 200;
global.door_distance = 30;
global.player_sus = 0;
global.paused = false

button_h = 75;
button[0] = "Main Menu"
button[1] = "Instructions"
button[2] = "Quit Game"

menu_index = 0;
last_selected = 0;

audio_play_sound(game_music, 1, true);
alarm[0] = room_speed / 1.5