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
	var _trash_obj_temp = _list[| _i];
	if (point_distance(_trash_obj_temp.x,_trash_obj_temp.y,active_player_id.x,active_player_id.y) < trash_pickup_range)
	{
		if (global.trash_type_counts[_trash_obj_temp.trash_type] < global.trash_cap[_trash_obj_temp.trash_type])
		{
			global.trash_type_counts[_list[| _i].trash_type] += 1;
			global.total_trash_count -= 1;
		
			instance_destroy(_list[| _i]);
			audio_play_sound(snd_trash_pickup, 0, 0);
		}
	}
	else
	{
		var _dir = point_direction(_trash_obj_temp.x, _trash_obj_temp.y, active_player_id.x, active_player_id.y);
		_trash_obj_temp.x += lengthdir_x(trash_suction_speed, _dir);
		_trash_obj_temp.y += lengthdir_y(trash_suction_speed, _dir);
	}
}



