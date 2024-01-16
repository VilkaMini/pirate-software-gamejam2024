/// @description Player step

h_speed = movement_speed * (global.bt_right - global.bt_left)
v_speed = movement_speed * (global.bt_up - global.bt_down)

x += h_speed;
y -= v_speed;

if (h_speed > 0){
	sprite_index = spr_trashRobot_right;
}
else if (h_speed < 0){
	sprite_index = spr_trashRobot_left;
}
else if (v_speed < 0){
	sprite_index = spr_trashRobot_down;
}
else if (v_speed > 0){
	sprite_index = spr_trashRobot_up;
}