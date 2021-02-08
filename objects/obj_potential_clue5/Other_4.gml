randomize()
var rand = irandom(global.rand_for_clues)

if ((rand == 0 || rand==2 || rand== 4 || rand == 3)  && (global.good_clues < 4 || global.cloak < 1)){
	if (global.cloak < 1){
		instance_create_depth(x,y,0,obj_cloak)
		global.cloak += 1
	}
	else{
		instance_create_depth(x,y,0,obj_connor_clue)
		global.good_clues += 1
	}
}
else if (rand == 1){
	instance_create_depth(x,y,0,obj_bad_clue)
}