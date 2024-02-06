/// @description Set GUI Size

_vx = camera_get_view_width(view_camera[0]);
_vy = camera_get_view_height(view_camera[0]);
display_set_gui_size(_vx, _vy);

draw_set_font(RobotoBold);

v_item_offset = 10;