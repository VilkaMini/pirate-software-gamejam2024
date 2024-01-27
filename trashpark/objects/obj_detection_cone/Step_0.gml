/// @description Cone logic

// Movement and angle sync
if (active_player_id){
	x = active_player_id.x;
	y = active_player_id.y;
}

image_angle = movement_dir_angle

// Collision check
var _list = ds_list_create();
var _num = instance_place_list(x, y, obj_trash_parent, _list, false);

for (var _i=0; _i<_num; _i++)
{
	if (global.trash_type_counts[_list[| _i].trash_type] < global.trash_cap)
	{
		global.trash_type_counts[_list[| _i].trash_type] += 1;
		global.total_trash_count -= 1;
		
		instance_destroy(_list[| _i]);
		audio_play_sound(snd_trash_pickup, 0, 0);
	}
	
	// TODO Can add sucking animation, aka iterating bring all objects closer and check if they are close enough to despawn too
}