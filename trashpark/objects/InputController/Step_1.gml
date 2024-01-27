/// @description Capture all inputs before frame
global.bt_left = false;
global.bt_right = false;
global.bt_up = false;
global.bt_down = false;
global.mouse_left_click = false;
global.space_clicked = false;


if (keyboard_check(vk_right) || keyboard_check(ord("D"))){
	global.bt_right = true;
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))){
	global.bt_left = true;
}
if (keyboard_check(vk_up) || keyboard_check(ord("W"))){
	global.bt_up = true;
}
if (keyboard_check(vk_down) || keyboard_check(ord("S"))){
	global.bt_down = true;
}
if (mouse_check_button(mb_left)){
	global.mouse_left_click = true;
}
if (keyboard_check(vk_space))
{
	global.space_clicked = true;
}



