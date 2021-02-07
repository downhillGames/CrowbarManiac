if (global.paused){
	global.paused = false
	instance_activate_all();
}
else if (!global.paused){
	global.paused = true
	 instance_deactivate_all(1);
}