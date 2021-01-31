/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5DABCEA8
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "obj_wall"
var l5DABCEA8_0 = instance_place(0, 0, obj_wall);
if ((l5DABCEA8_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6E6FB039
	/// @DnDParent : 5DABCEA8
	/// @DnDArgument : "objectid" "obj_wall"
	/// @DnDSaveInfo : "objectid" "obj_wall"
	instance_create_layer(0, 0, "Instances", obj_wall);
}