randomize()
var rand = irandom(3)
while (last_rand == rand)
	rand = irandom(2)
last_rand = rand
var maniac_path = path_add();
if (rand == 0){
	mp_potential_path(maniac_path, obj_goal1.x, obj_goal1.y, 2,path_size, false)
	path_start(maniac_path, 2, path_action_stop, true);
}
else if (rand == 1){
	mp_potential_path(maniac_path, obj_goal2.x, obj_goal2.y, 2,path_size, false)
	path_start(maniac_path, 2, path_action_stop, true);
}
else if (rand == 2){
	mp_potential_path(maniac_path, obj_goal3.x, obj_goal3.y, 2,path_size, false)
	path_start(maniac_path, 2, path_action_stop, true);
}

else if (rand == 3){
	mp_potential_path(maniac_path, obj_goal4.x, obj_goal4.y, 2,path_size, false)
	path_start(maniac_path, 2, path_action_stop, true);
}

