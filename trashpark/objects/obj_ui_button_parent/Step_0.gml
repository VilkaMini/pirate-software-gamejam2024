var mouse_hover = collision_point(mouse_x, mouse_y, id, true, false);

if (mouse_hover)
{
	image_blend = merge_color(image_blend, c_hover, 0.1);
	if (global.mouse_left_click){
		if (on_click != undefined)
		{
			on_click();
			image_blend = c_click;
		}
	}
}
else
{
	image_blend = merge_color(image_blend, c_default, 0.1);
}











