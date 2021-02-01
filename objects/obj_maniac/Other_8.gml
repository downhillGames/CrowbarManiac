if (state== "follow_path"){
	randomize()
	var rand = irandom(3)

	if (mid_path){
		path_start(midpath, 2, path_action_stop, false);
		mid_path = false;
	}else{
	
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
		mid_path = true;
	}
}