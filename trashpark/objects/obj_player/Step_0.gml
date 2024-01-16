/// @description Player step

h_speed = movement_speed * (global.bt_right - global.bt_left)
v_speed = movement_speed * (global.bt_up - global.bt_down)

x += h_speed;
y -= v_speed;


