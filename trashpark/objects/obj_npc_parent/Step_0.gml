/// @description Npc Step


// Sprite rotatioon
switch (direction)
{
	case 0:
		sprite_index = spr_npc_walking_right;
		break;
	case 90:
		sprite_index = spr_npc_walking_back;
		break;
	case 180:
		sprite_index = spr_npc_walking_left;
		break;
	case 270:
		sprite_index = spr_npc_walking_front;
		break;
}

if (random_range(0, 50) < 5){
	var random_dir = random_range(0, 359);
	var _xx = x + lengthdir_x(10, random_dir);
	var _yy = y + lengthdir_y(10, random_dir);
	var trashId = instance_create_layer(_xx, _yy, "Instances", object_to_trash);
	trashId.image_angle = random_range(0, 359);
	trashId.image_xscale = 0.5;
	trashId.image_yscale = 0.5;
}

// Depth filter
depth=-y;