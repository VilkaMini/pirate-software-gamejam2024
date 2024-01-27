/// @description Player step

h_speed = movement_speed * (global.bt_right - global.bt_left)
v_speed = movement_speed * (global.bt_up - global.bt_down)

if (!global.game_running) return;

if (collision_rectangle(x-10, y-10, x+10, y+10, obj_dumpster, true, true))
{
	global.near_dumpster = true;
}
else
{
	global.near_dumpster = false;
}

if (!place_meeting(x + h_speed, y, [obj_decoration_object_parent, obj_npc_parent]))
{
	x += h_speed;
}
if (!place_meeting(x, y - v_speed, [obj_decoration_object_parent, obj_npc_parent]))
{
	y -= v_speed;
}

if (h_speed > 0){
	current_movement_angle = 0;
	//sprite_index = spr_trashRobot_right;
}
else if (h_speed < 0){
	current_movement_angle = 180;
	//sprite_index = spr_trashRobot_left;
}
else if (v_speed < 0){
	current_movement_angle = 270;
	//sprite_index = spr_trashRobot_down;
}
else if (v_speed > 0){
	current_movement_angle = 90;
	//sprite_index = spr_trashRobot_up;
}

cone_object.movement_dir_angle = current_movement_angle;
image_angle = current_movement_angle;
depth = -y;