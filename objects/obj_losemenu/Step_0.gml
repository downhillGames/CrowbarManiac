menu_move = keyboard_check_pressed(vk_down) -  keyboard_check_pressed(vk_up);

menu_index += menu_move;



if (menu_index < 0)
	menu_index =  array_length(button) - 1 
if (menu_index > array_length(button) - 1 )
	menu_index = 0

if (menu_index != last_selected){
		audio_sound_pitch(menu, random_range(0.8,1.2))
		audio_play_sound(menu, 1, 0)
}


	

last_selected = menu_index; 