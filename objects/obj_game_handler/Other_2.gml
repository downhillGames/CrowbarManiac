global.been_through_main = false;
global.good_clues = 0
global.rand_for_clues = 4

if (!global.been_through_main){
	global.been_through_main = true;
	room_goto(MainMenu);
}
