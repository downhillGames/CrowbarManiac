if (state== "follow_path"){
	var cop_path = path_add();
	randomize()
	var rand = irandom(2)
	while (last_rand == rand)
		rand = irandom(2)
	last_rand = rand
	if (rand == 0){
		mp_potential_path(cop_path , obj_cop2_goal1.x, obj_cop2_goal1.y, 2,path_size, false)
		path_start(cop_path, 2, path_action_stop, true);
	}
	else if (rand == 1){
		mp_potential_path(cop_path , obj_cop2_goal2.x, obj_cop2_goal2.y, 2,path_size, false)
		path_start(cop_path, 2, path_action_stop, true);
	}
	else if (rand == 2){
		mp_potential_path(cop_path , obj_cop2_goal3.x, obj_cop2_goal3.y, 2,path_size, false)
		path_start(cop_path, 2, path_action_stop, true);
	}

}