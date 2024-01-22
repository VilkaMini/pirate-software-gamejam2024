/// @description Cone logic

// Movement and angle sync
if (active_player_id){
	x = active_player_id.x;
	y = active_player_id.y;
}

image_angle = movement_dir_angle

// Collision check
var _list = ds_list_create();
var _num = instance_place_list(x, y, trash_parent, _list, false);

for (var i=0; i<_num; i++)
{
	show_debug_message(_list[| i]);
}