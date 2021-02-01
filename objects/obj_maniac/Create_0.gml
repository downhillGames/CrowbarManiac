randomize()
last_direction = 1
var rand = irandom(3)

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