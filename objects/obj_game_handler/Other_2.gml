global.been_through_main = false;
global.good_clues = 0
global.rand_for_clues = 2
global.cloak = 0

global.rmTownGrid = mp_grid_create(0,0, room_width, room_height, room_width / 40,  room_height / 40 )
mp_grid_add_instances(global.rmTownGrid, obj_wall, true);

if (!global.been_through_main){
	global.been_through_main = true;
	room_goto(MainMenu);
}
