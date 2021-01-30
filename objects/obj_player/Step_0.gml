/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6DF41945
/// @DnDArgument : "key" "vk_down"
var l6DF41945_0;
l6DF41945_0 = keyboard_check(vk_down);
if (l6DF41945_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5E1E3657
	/// @DnDParent : 6DF41945
	/// @DnDArgument : "speed" "5"
	/// @DnDArgument : "type" "2"
	vspeed = 5;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 79CFEBF3
/// @DnDArgument : "key" "vk_up"
var l79CFEBF3_0;
l79CFEBF3_0 = keyboard_check(vk_up);
if (l79CFEBF3_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 01758721
	/// @DnDParent : 79CFEBF3
	/// @DnDArgument : "speed" "-5"
	/// @DnDArgument : "type" "2"
	vspeed = -5;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 635A368A
/// @DnDArgument : "key" "vk_left"
var l635A368A_0;
l635A368A_0 = keyboard_check(vk_left);
if (l635A368A_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4E136C9F
	/// @DnDParent : 635A368A
	/// @DnDArgument : "speed" "-5"
	/// @DnDArgument : "type" "1"
	hspeed = -5;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 503AC39C
/// @DnDArgument : "key" "vk_right"
var l503AC39C_0;
l503AC39C_0 = keyboard_check(vk_right);
if (l503AC39C_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3811F9DA
	/// @DnDParent : 503AC39C
	/// @DnDArgument : "speed" "5"
	/// @DnDArgument : "type" "1"
	hspeed = 5;
}

/// @DnDAction : YoYo Games.Movement.Set_Friction
/// @DnDVersion : 1
/// @DnDHash : 09EA6816
/// @DnDArgument : "friction" "1"
friction = 1;